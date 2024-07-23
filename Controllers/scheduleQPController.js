const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();

const getScheduleQP = async (req, res) => {
  // const { candidate_id } = req.body;
  const { candidate_id } = res.locals.user;

  try {
    //selecting a random qp_id from rqp_specification
    const randomQP_IDResult =
      await prisma.$queryRaw`SELECT QP_ID FROM rqp_specification ORDER BY RAND() LIMIT 1`;

    if (randomQP_IDResult.length === 0) {
      throw new Error("No records found in the table.");
    }

    // const randomQP_ID = randomQP_IDResult[0].QP_ID; //random question paper id
    const randomQP_ID = 811223;
    //fetching the record according to the random qp_id
    const record = await prisma.rqp_specification.findMany({
      where: {
        QP_ID: randomQP_ID,
      },
    });

    //fetching questions according to sa_id from record
    let data = [];

    for (let i = 0; i < record.length; i++) {
      const sa_id = record[i].SA_ID;
      const questions = await prisma.question.findMany({
        where: {
          SA_ID: sa_id,
        },
      });
      // Fetching answer choices for each question
      for (let j = 0; j < questions.length; j++) {
        const questionId = questions[j].QUESTION_ID;
        const answerChoices = await prisma.answer_choice.findMany({
          where: {
            QUESTION_ID: questionId,
          },
          orderBy: {
            ANS_CHOICE_ID: "asc",
          },
        });

        // Adding answer choices to the question object
        questions[j].answer_choices = answerChoices;
      }

      subject_name = record[i].NODE_NAME;
      noq = record[i].NOQ;
      wtg = record[i].WTG;
      timeallocated = record[i].TIME_ALLOCATED;
      isNegativeMarking = record[i].IS_NEGATIVE_MARKING;
      data.push({
        sa_id,
        subject_name,
        noq,
        wtg,
        timeallocated,
        isNegativeMarking,
        questions,
      });
    }

    //storing the candidate question paper into the candidate_test table updating if id exist

    await prisma.candidate_test.upsert({
      where: {
        CANDIDATE_ID: candidate_id, // The unique identifier to check for existing record
      },
      update: {
        SQP_ID: randomQP_ID,
        START_TIME: new Date(),
        TEST_STATUS: 1,
      },
      create: {
        CANDIDATE_ID: candidate_id,
        SQP_ID: randomQP_ID,
        START_TIME: new Date(),
        TEST_STATUS: 1,
      },
    });

    res.status(200).send({ success: true, candidate_id, randomQP_ID, data });
  } catch (error) {
    console.log("Error fetching scheduleQP:", error);
    res
      .status(500)
      .json({ success: false, error: "Error while fetching the scheduleQP" });
  }
};

module.exports = {
  getScheduleQP,
};
