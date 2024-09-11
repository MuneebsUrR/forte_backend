const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();
const imageType = import('image-type');
const getScheduleQP = async (req, res) => {
  const { candidate_id } = res.locals.user;

  try {
    //selecting the random sqp_id from scheduled question paper table
    const randomSQP = await prisma.$queryRaw`SELECT * FROM scheduled_question_paper ORDER BY RAND() LIMIT 1;`;
    const selected_subjects = await prisma.$queryRaw`SELECT TS_ID,SUBJECT_ID,NODE_NAME,NOQ,WTG,TIME_ALLOCATED,IS_NEGATIVE_MARKING FROM rqp_specification WHERE TS_ID = ${randomSQP[0].TS_ID};`;
    //Selecting question for each selected subject

    for (let i = 0; i < selected_subjects.length; i++) {
      let subject_question = await prisma.$queryRaw`SELECT s.SA_ID,s.QUESTION_ORDER, q.QUESTION_ID,q.QUESTION_TEXT,q.IS_TEXT,q.OLE_IMAGE from question q , scheduled_test_question s where s.SQP_ID = ${randomSQP[0].SQP_ID} and s.QP_ID = ${randomSQP[0].QP_ID} and s.SA_ID = ${selected_subjects[i].SUBJECT_ID} and q.QUESTION_ID = s.QUESTION_ID;`;
      //storing answer choices of each questions index
      for (let j = 0; j < subject_question.length; j++) {
        let answer_choices = await prisma.$queryRaw`SELECT a.ANS_CHOICE_ID, a.QUESTION_ID ,a.ANS_CHOICE_TEXT,a.IS_TEXT,a.OLE_IMAGE FROM scheduled_test_answer s , answer_choice a where s.SQP_ID = ${randomSQP[0].SQP_ID} and s.QP_ID = ${randomSQP[0].QP_ID}  and s.QUESTION_ID = ${subject_question[j].QUESTION_ID} and a.ANS_CHOICE_ID = s.ANS_CHOICE_ID and a.QUESTION_ID = ${subject_question[j].QUESTION_ID}; `;
        subject_question[j].answer_choices = answer_choices;
      }
      selected_subjects[i].questions = subject_question;

    }


    // Saving or updating paper information in the candidate_test table
    await prisma.candidate_test.upsert({
      where: {
        CANDIDATE_ID: candidate_id,
      },
      update: {
        SQP_ID: randomSQP[0].SQP_ID,
        SESSION_ID: randomSQP[0].SESSION_ID,
        START_TIME: new Date(),
      },
      create: {
        CANDIDATE_ID: candidate_id,
        SQP_ID: randomSQP[0].SQP_ID,
        SESSION_ID: randomSQP[0].SESSION_ID,
        START_TIME: new Date(),
      },
    });

    // Check if candidate_test_detail already exists for this candidate and delete existing entries
    await prisma.candidate_test_detail.deleteMany({
      where: {
        CANDIDATE_ID: candidate_id,
      },
    });
    
    // Inserting questions into the candidate_test_detail table using selected_subjects
    for (let i = 0; i < selected_subjects.length; i++) {
      for (let j = 0; j < selected_subjects[i].questions.length; j++) {
        await prisma.candidate_test_detail.create({
          data: {
            CANDIDATE_ID: candidate_id,
            SQP_ID: randomSQP[0].SQP_ID,
            QP_ID: randomSQP[0].QP_ID,
            QUESTION_ID: selected_subjects[i].questions[j].QUESTION_ID,
            SELECTED_ANSWER:-1,
            LAST_VIEW_TIME:null,
            ELAPSED_TIME:null,
            IS_ATTEMPED:0,
            IS_CORRECT:null,
            MARKS:0,
            MARKED_BY:null,
            MARKED_ON:null,
          },
        });
      }
    }

    res.status(200).send({ message: 'success', SQP_ID: randomSQP[0].SQP_ID, QP_ID: randomSQP[0].QP_ID, data: selected_subjects });

  } catch (error) {
    console.log(error);
    res.status(500).send({ message: "Internal Server Error" });
  }


};

module.exports = {
  getScheduleQP,
};
