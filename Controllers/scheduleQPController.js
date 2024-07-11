const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();

const  getScheduleQP = async (req, res) => {

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
                QP_ID: randomQP_ID,
            },
        });

        res.status(200).send({ success: true, randomQP_ID, record });

    } catch (error) {
        console.log("Error fetching scheduleQP:", error);
        res.status(500).json({ success: false, error: "Error while fetching the scheduleQP" });
    }
}

module.exports={
    getScheduleQP,
}