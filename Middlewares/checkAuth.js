const jwt = require("jsonwebtoken");

const checkAuth = async (req, res, next) => {
  const { apikey } = req.headers;

  if (!apikey) {
    return res
      .status(404)
      .send({ success: false, message: "Api token missing!" });
  }

  try {
    const decoded = jwt.verify(apikey, process.env.JWT_SECRET);

    if (decoded) {
      let u = {
        id: decoded.id,
        name: decoded.name,
      };
      res.locals.user = u;

      next();
    } else {
      res.status(404).json({
        success: false,
        message: "Your Are Not Authenticate! Login again",
      });
    }
  } catch (error) {
    console.error("Error during token check:", error);
    res.status(500).json({ error: "Error while processing the request" });
  }
};

module.exports = {
  checkAuth,
};
