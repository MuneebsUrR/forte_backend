const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();

const getScheduleQP = async (req, res) => {

    try {
        //selecting a random qp_id from rqp_specification
        const randomQP_IDResult = await prisma.$queryRaw`SELECT QP_ID FROM rqp_specification ORDER BY RAND() LIMIT 1`;

        if (randomQP_IDResult.length === 0) {
            throw new Error('No records found in the table.');
        }


        const randomQP_ID = randomQP_IDResult[0].QP_ID;

        //fetching the record according to the random qp_id
        const record = await prisma.rqp_specification.findMany({
            where: {
                QP_ID: 811223,
            },
        });

        //fetching questions according to sa_id from record
        let all_questions = [];

        for (let i = 0; i < record.length; i++) {

            const sa_id = record[i].SA_ID;
            const questions = await prisma.question.findMany({
                where: {
                    SA_ID: sa_id,
                }
            })
            // Fetching answer choices for each question
            for (let j = 0; j < questions.length; j++) {
                const questionId = questions[j].QUESTION_ID;
                const answerChoices = await prisma.answer_choice.findMany({
                    where: {
                        QUESTION_ID: questionId,
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
            all_questions.push({
                sa_id,
                subject_name,
                noq,
                wtg,
                timeallocated,
                isNegativeMarking,
                questions
            });
        }

        res.status(200).send({ success: true, randomQP_ID, all_questions });

    } catch (error) {
        console.log("Error fetching scheduleQP:", error);
        res.status(500).json({ success: false, error: "Error while fetching the scheduleQP" });
    }
}

module.exports = {
    getScheduleQP,
}