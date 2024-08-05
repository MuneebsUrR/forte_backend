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

    //storing answer choices of each questions index


    res.status(200).send({ message: 'success',  SQP_ID: randomSQP[0].SQP_ID, QP_ID: randomSQP[0].QP_ID,data: selected_subjects });

  } catch (error) {
    console.log(error);
    res.status(500).send({ message: "Internal Server Error" });
  }


};

module.exports = {
  getScheduleQP,
};
