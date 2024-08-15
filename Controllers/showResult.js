const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();

const showResult = async (req, res) => {
  const { candidate_id } = res.locals.user;

  try {
    const candidateTestDetails = await prisma.candidate_test_detail.findMany({
      where: {
        CANDIDATE_ID: candidate_id,
      },
    });

    let resultList = [];

    for (const testDetail of candidateTestDetails) {
      const { QUESTION_ID, SELECTED_ANSWER } = testDetail;

      // Fetch the correct answer choice for the question
      const correctAnswer = await prisma.correct_answer_choice.findFirst({
        where: {
          QUESTION_ID: QUESTION_ID,
        },
      });

      // Check if the selected answer matches the correct answer
      if (correctAnswer) {
        const isCorrect = correctAnswer.ANS_CHOICE_ID === SELECTED_ANSWER;
        resultList.push({
          QuestionID: QUESTION_ID,
          SelectedAnswer: SELECTED_ANSWER,
          IsCorrect: isCorrect ? 1 : 0,
        });
      } else {
        console.log(`Question ID: ${QUESTION_ID}, No correct answer found.`);
      }
    }

    // console.log(resultList);

    let correctAnswers = resultList.filter((r) => r.IsCorrect);
    let result = {
      no_of_correct_answers: correctAnswers.length,
      no_of_wrong_answers: resultList.length - correctAnswers.length,
    };

    res.status(200).json({ success: true, result, resultDetail: resultList });
  } catch (error) {
    console.error("Error fetching results", error);
    res.status(500).json({ success: false, message: "Error fetching results" });
  }
};

module.exports = {
  showResult,
};
