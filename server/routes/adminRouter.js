const express = require("express");

const Recipi = require("../models/recipies");

const adminRouter = express.Router();

adminRouter.post("/admin/add-product", async (req, res) => {
  console.log("hi from server");

  try {
    const recipi = Recipi({
      title: req.body.title,
      affordability: req.body.affordability,
      category: req.body.categories,
      imageurl: req.body.imageUrl,
      complexity: req.body.complexity,
      isglutenefree: req.body.isGlutenFree,
      isvegetarian: req.body.isVegetarian,
      steps: req.body.steps,
      ingredients: req.body.ingredients,
      duration: req.body.duration,
    });

    await recipi.save();

    res.json({ msg: "sucess" });
  } catch (e) {
    console.log(e);
    res.json({ error: e });
  }

  console.log(req.body);
});

module.exports = adminRouter;
