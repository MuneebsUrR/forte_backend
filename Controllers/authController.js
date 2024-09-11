const { PrismaClient } = require("@prisma/client");
const jwt = require("jsonwebtoken");

const prisma = new PrismaClient();

const login = async (req, res) => {
  const { candidate_id, password } = req.body;

  if (!candidate_id || !password) {
    return res
      .status(404)
      .send({ success: false, message: "Required fields missing!" });
  }

  try {
    const user = await prisma.candidate.findUnique({
      where: {
        CANDIDATE_ID: candidate_id,
      },
    });

    if (!user) {
      console.log("user not found", candidate_id, password);
      return res
        .status(404)
        .send({ success: false, message: "Invalid Credentials" });
    }

    if (user.PASSWORD === password) {
      const token = jwt.sign(
        { name: user.FIRST_NAME, id: user.CANDIDATE_ID },
        process.env.JWT_SECRET,
        { expiresIn: "1d" }
      );

      res
        .status(200)
        .send({ success: true, message: "Login Successful", user, token });
    } else {
      res.status(401).send({ success: false, message: "Invalid Credentials" });
    }
  } catch (error) {
    console.error("Error during login:", error);
    res.status(500).json({ error: "Error while processing the login" });
  }
};

module.exports = {
  login,
};
