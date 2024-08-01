const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();

// const saveUserProgress = async (req, res) => {
//   const { toSave, candidate_id, QP_ID } = req.body;

//   if (!toSave || toSave.length < 1) {
//     return res.status(400).send({
//       success: false,
//       message: "Progress save failed! No data provided to save",
//     });
//   }

//   try {
//     const results = [];

//     for (const item of toSave) {
//       const { questionID, answerID } = item;

//       // Fetch the correct answer choice for the given question
//       const getQuestion = await prisma.correct_answer_choice.findUnique({
//         where: {
//           ANS_CHOICE_ID_QUESTION_ID: {
//             ANS_CHOICE_ID: answerID,
//             QUESTION_ID: questionID,
//           },
//         },
//       });

//       const isCorrect = getQuestion !== null;

//       results.push({
//         questionID,
//         isCorrect,
//         selectedAnswer: answerID,
//       });
//     }

//     res.status(200).send({
//       success: true,
//       results,
//     });
//   } catch (error) {
//     console.error(error);
//     res.status(500).send({
//       success: false,
//       message: "An error occurred while saving progress",
//     });
//   }
// };

const saveUserProgress = async (req, res) => {
  const { toSave, sqpID, qpID } = req.body;
  const { candidate_id } = res.locals.user;

  try {
    const result = await prisma.candidate_test_detail.findMany();
    console.log(result);
  } catch (error) {
    console.error("Error:", error);
  }
  // if (!toSave || toSave.length < 1) {
  //   return res.status(400).send({
  //     success: false,
  //     message: "Progress save failed! No data provided to save",
  //   });
  // }

  // try {
  //   const results = [];

  //   for (const item of toSave) {
  //     const { questionID, answerID } = item;

  //     // Fetch the correct answer choice for the given question
  //     const getQuestion = await prisma.correct_answer_choice.findUnique({
  //       where: {
  //         ANS_CHOICE_ID_QUESTION_ID: {
  //           ANS_CHOICE_ID: answerID,
  //           QUESTION_ID: questionID,
  //         },
  //       },
  //     });

  //     const isCorrect = getQuestion !== null;

  //     results.push({
  //       questionID,
  //       isCorrect,
  //       selectedAnswer: answerID,
  //     });

  //     // Upsert the user progress in the candidate_test_detail table
  //     await prisma.candidate_test_detail.upsert({
  //       where: {
  //         QUESTION_ID_QP_ID_SQP_ID_CANDIDATE_ID: {
  //           QUESTION_ID: questionID,
  //           QP_ID: qpID,
  //           SQP_ID: sqpID,
  //           CANDIDATE_ID: candidate_id,
  //         },
  //       },
  //       update: {
  //         SELECTED_ANSWER: answerID,
  //         IS_CORRECT: isCorrect ? 1 : 0,
  //         IS_ATTEMPED: 1,
  //       },
  //       create: {
  //         CANDIDATE_ID: candidate_id,
  //         SQP_ID: sqpID,
  //         QP_ID: qpID,
  //         QUESTION_ID: questionID,
  //         SELECTED_ANSWER: answerID,
  //         IS_ATTEMPED: 1,
  //         IS_CORRECT: isCorrect ? 1 : 0,
  //       },
  //     });
  //   }

  //   res.status(200).send({
  //     success: true,
  //     message: "Progress saved successfully",
  //   });
  // } catch (error) {
  //   console.error(error);
  //   res.status(500).send({
  //     success: false,
  //     error: "An error occurred while saving progress",
  //   });
  // }
};

module.exports = {
  saveUserProgress,
};
