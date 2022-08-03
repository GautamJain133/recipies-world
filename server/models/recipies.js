const mongoose = require("mongoose");

/*String categories;
  String title;
  String affordability;
  String complexity;
  List<String> imageUrl;
  String duration;
  String ingredients;
  String steps;
  bool isGlutenFree;
  bool isVegetarian;*/

const recipiSchema = new mongoose.Schema({
  title: {
    type: String,
    required: true,
  },
  affordability: {
    type: String,
    required: true,
  },

  complexity: {
    type: String,
    required: true,
  },

  imageurl: [
    {
      type: String,
      required: true,
    },
  ],

  duration: {
    type: String,
    required: true,
  },

  ingredients: {
    type: String,
    required: true,
  },

  steps: {
    type: String,
    required: true,
  },

  isglutenefree: {
    type: Boolean,
    required: true,
  },

  isvegetarian: {
    type: Boolean,
    required: true,
  },

  category: {
    type: String,
    required: true,
  },
});
const Recipi = mongoose.model("Recipi", recipiSchema);
module.exports = Recipi;
