const dotenv = require("dotenv").config();
const mongoose = require("mongoose");
const express = require("express");
const db = process.env.DB;
const adminRouter = require("./routes/adminRouter.js");
const PORT = 3000;
const app = express();
app.use(express.json());
app.use(adminRouter);

console.log(db);
mongoose.connect(
  `mongodb+srv://admin:OQurQWgWTM5MHbXn@atlascluster.b8rtptn.mongodb.net/recipies?retryWrites=true&w=majority`,
  (error) => {
    if (error) console.log(error);
    console.log(db);
  }
);

app.listen(PORT, "0.0.0.0", function () {
  console.log(`listen at port ${PORT}`);
});
