const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();

const saveUserProgress = async (req, res) => {
  const { candidate_id } = res.locals.user;
  const { list } = req.body;
  try {
    // Save the progress to the database
    for (let i = 0; i < list.length; i++) {
      await prisma.candidate_test_detail.updateMany({
        where: {
          CANDIDATE_ID: candidate_id,
          SQP_ID: list[i].SQP_ID,
          QP_ID: list[i].QP_ID,
          QUESTION_ID: list[i].QUESTION_ID
        },
        data: {
          SELECTED_ANSWER: list[i].SELECTED_ANSWER,
          LAST_VIEW_TIME: new Date(list[i].LAST_VIEW_TIME),
          ELAPSED_TIME: new Date(list[i].ELAPSED_TIME),
          IS_ATTEMPED: list[i].IS_ATTEMPED
        }
      });
    }

    res.status(200).json({ message: "Progress saved successfully" });

  } catch (error) {
    console.error("Failed to save progress:", error);
    res.status(500).json({ message: "Failed to save progress" });

  }

};

module.exports = { saveUserProgress }; 