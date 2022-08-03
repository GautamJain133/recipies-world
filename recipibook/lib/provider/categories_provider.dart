import 'package:flutter/material.dart';
import '../models/categories.dart';

class Categoriesprovider with ChangeNotifier {
  Categories _category = Categories(
      affordability: '',
      categories: '',
      complexity: '',
      duration: '',
      imageUrl: [],
      ingredients: '',
      isGlutenFree: true,
      isVegetarian: true,
      steps: '',
      title: '');

  List<Categories> cat = [
    Categories(
      categories: 'c6',
      title: 'Pav-Bhaji',
      affordability: 'Affordable',
      complexity: 'Simple',
      imageUrl: ['assets/images/pavbhaji.png'],
      duration: "40",
      ingredients:
          ''' '  4 medium mashed,boiled potato','2 medium chopped onion''1/2 cup chopped cauliflow'1 cup shelled,blanched peas'3 tablespoon refined oil',
        ' salt as required' '   8 pav'  ' 2 teaspoon garlic pa '1/4 cup green bea'4 medium chopped tomato'1 chopped,de seeded capsicum ( green pepper)','1/4 cup chopped carrot',
        ' 1/2 tablespoon ginger paste',
        '2 chopped green chilli',
        ' 25 gm melted butter',
        '1 medium lemon wedges',
        ' 2 teaspoon pav bhaji masala',
      ''',
      steps:
          ' Prepare the masala for Pav Bhaji, Blanch the peas, cauliflower florets, carrots and beans. Alternately, you can also boil them with a little water in the pressure cooker. Drain and mash coarsely. Heat oil in a pan and add three fourth quantity of onions. Sauté till light golden in colour. Add green chillies and ginger-garlic paste. Stir-fry for half a minute and then add pav bhaji masala along with chopped capsicum, and stir fry for a minute Step 2 Add all the veggies and once cooked, mash them,Ensure that you have finely chopped the tomatoes. If they have tough skin, chop them after removing the skin or grate them. Add tomatoes, salt and cook on medium heat for three to four minutes, stirring continuously or till oil separates from the masala. Add mashed peas, cauliflower, potatoes and 2 cups of water. Bring it to a boil and simmer for ten minutes, pressing with the back of the spoon a few times, till all the vegetables are completely mashed and blended together.',
      isGlutenFree: false,
      isVegetarian: true,
    ),
    /* Categories(
      id: 'm2',
      categories: [
        'c2',
        'c7',
        'c8',
      ],
      title: 'Sandwich',
      affordability: "Affordable",
      complexity: "Simple",
      imageUrl: 'assets/images/sandwich.jpg',
      duration: 10,
      ingredients: [
        '1 Slice White Bread',
        'Slices of vegatables',
        '1 Slice Pineapple',
        '1-2 Slices of Cheese',
        'Butter'
      ],
      steps: [
        "Butter one side of the white bread",
        'Layer ham, the pineapple and cheese on the white bread',
        'Bake the toast for round about 10 minutes in the oven at 200°C'
      ],
      isGlutenFree: false,
      isVegetarian: true,
      isLactoseFree: true,
    ),
    Categories(
      id: 'm3',
      categories: [
        'c2',
        'c6',
      ],
      title: 'Burger',
      affordability: "Pricey",
      complexity: "Simple",
      imageUrl: 'assets/images/burggr (2).png',
      duration: 20,
      ingredients: [
        'Burger slice',
        '1 Tomato',
        '1 Cucumber',
        '1 Onion',
        'Ketchup',
        '2 Burger Buns'
      ],
      steps: [
        'Fry the Burgerslice , 4 minutes on each side',
        'Quickly fry the buns ,1 minute on each side',
        'Bruch buns with ketchup',
        'Serve burger with tomato, cucumber and onion'
      ],
      isGlutenFree: false,
      isVegetarian: true,
      isLactoseFree: true,
    ),
    Categories(
      id: 'm4',
      categories: [
        'c1',
        'c7',
        'c8',
      ],
      title: 'kachori',
      affordability: "Affordable",
      complexity: "Challenging",
      imageUrl: 'assets/images/kachodi.jpg',
      duration: 60,
      ingredients: [
        '250g fine wheat flour',
        'oil for friying',
        '50g Dal',
        '150g Besan ',
        'salt',
        'chilli',
        'black papper',
      ],
      steps: [
        '1. Take 2 cups all purpose flour (maida) in a bowl or pan.',
        '2. Add ½ teaspoon salt or as per taste.',
        '3. Add ¼ cup ghee.',
        '4. With your fingertips mix the ghee with the flour for a few minutes.',
        '5. You have to mix well, till you get a breadcrumb like texture in the flour. When this mixture is pressed, it should not break.',
        '6. Then add ½ cup water in parts.',
        '7. Mix and then begin to knead.',
        '8. Knead to a smooth dough. Add water as required. If the dough becomes sticky, then add some flour. If the dough looks dry, then add some more water and knead. The dough can be semi-soft to soft. But do not make it too soft.',
        '9. Cover the dough with a moist muslin or kitchen towel. Let the dough rest for 30 minutes.',
        '10. Rinse ½ cup moong dal in a bowl. Soak moong dal for 2 hours.',
        '11. Later drain all the water very well and add the soaked moong lentils in a grinder jar.',
        '12. Using the pulse option, lightly crush or make a roughly coarse mixture of the moong lentils. Do not grind too much.',
        '13. Then heat a pan. Add ½ tablespoon ghee.',
        '14. Once the ghee melts, keep the flame to the lowest or switch off the flame. add all the spice powders one by one. First add ¼ teaspoon turmeric powder and ½ teaspoon red chilli powder.',
        '15. Then add ½ teaspoon cumin powder.',
        '16. Next add 1 teaspoon coriander powder.',
        '17. Add 1 teaspoon crushed fennel seeds. You can also use fennel powder.',
        '18. Add ½ teaspoon dry ginger powder (saunth powder). Instead of ginger powder, you can also use ½ teaspoon finely chopped ginger. Some chopped green chilies can also be added.',
        '19. Now add 1 teaspoon dry mango powder (amchur powder).',
        '20. Keep the flame to its lowest and mix very well.',
        '21. Do make sure that the spices do not burn.',
        '22. Then add the coarsely ground moong dal. Also add salt and 1 pinch of asafoetida (hing).',
        '23. On a low flame mix very well.',
        '24. Sauté with non stop stirring for 3 to 4 minutes on a low flame. Check the taste and if required you can add more spice powders like red chili powder and mango powder. Let the mixture become warm or cool down.',
        '25. Now make small balls from this moong dal mixture. You can also spread some oil on your palms while making the balls. Cover and keep aside.',
        '26. After 30 minutes, lightly knead the dough. Then roll the dough into a log.',
        '27. Now cut the dough in equal portions. This will depend on the number of moong dal mixture balls that were made. With this recipe, you will get about 9 to 10 kachoris.',
        '28. Take a portion of the cut dough and flatten it with your fingers. Keep the edges thin while flattening. You can also use a rolling pin (belan) to flatten.',
        '29. Now place the moong dal stuffing ball on the dough. Flatten the moong dal stuffing ball.',
        '30. Bring the edges of the dough together and join them at the center. Excess dough can be pinched off and removed.',
        '31. Press and then flatten the top. Do check the video above to see how the stuffing and shaping is done.',
        '32. Now gently roll the kachori with a rolling pin to get a medium thickness kachori. Stuff and prepare all kachoris this way. Keep them covered under a moist muslin or cotton cloth, so that they do not dry up.',
        '33. Heat oil for frying and keep the flame to a low. When the oil is just hot enough, you can add the kachoris. Make sure the oil is not medium hot or very hot. to check the temperature while frying, add a small piece of dough to the oil. If it comes slowly and steadily to the surface, then the kachoris are ready to be fried. if the dough comes quickly, the oil is too hot. So lower the flame. If it does not come on the surface, then the oil is cold. So increase the flame.',
        '34. When the kachoris start puffing up, then gently nudge each kachori with a spoon, so that they puff up well.',
        '35. When the base becomes light golden, then gently turn them over. The frying takes about 7 to 9 minutes. So one has to be patient.',
        '36. Continue to fry on a low to low-medium flame till the kachoris become golden. While frying you can turn them often to get an even color. Regulate the temperature from low to low-medium as required.',
        '37. Fry the kachoris till they become golden and nicely crisp from outside.',
        '38. Remove with a slotted spoon and drain the excess oil back in the kadai. Place khasta kachori on kitchen paper towels so that excess oil is absorbed. Fry all kachori this way.',
        '39. Serve khasta kachori warm accompanied with some fried & salted green chilies, tamarind dates chutney and green chutney. You can also serve with chili garlic chutney or curd.',
      ],
      isGlutenFree: false,
      isVegetarian: true,
      isLactoseFree: true,
    ),
    Categories(
      id: 'm5',
      categories: [
        'c2'
            'c5',
        'c10',
      ],
      title: 'Salad with Smoked Salmon',
      affordability: "Luxurious",
      complexity: "Simple",
      imageUrl: 'assets/images/salad.png',
      duration: 15,
      ingredients: [
        'Arugula',
        'Lamb\'s Lettuce',
        'Parsley',
        'Fennel',
        '200g Smoked Salmon',
        'Mustard',
        'Balsamic Vinegar',
        'Olive Oil',
        'Salt and Pepper'
      ],
      steps: [
        'Wash and cut salad and herbs',
        'Dice the salmon',
        'Process mustard, vinegar and olive oil into a dessing',
        'Prepare the salad',
        'Add salmon cubes and dressing'
      ],
      isGlutenFree: true,
      isVegetarian: true,
      isLactoseFree: true,
    ),
    Categories(
    uration: 240,
      ingredients: [
        '4 Sheets of Gelatine',
        '150ml Orange Juice',
        '80g Sugar',
        '300g Yoghurt',
        '200g Cream',
        'Orange Peel',
      ],
      steps: [
        'Dissolve gelatine in pot',
        'Add orange juice and sugar',
        'Take pot off the stove',
        'Add 2 tablespoons of yoghurt',
        'Stir gelatin under remaining yoghurt',
        'Cool everything down in the refrigerator',
        'Whip the cream and lift it under die orange mass',
        'Cool down again for at least 4 hours',
        'Serve with orange peel',
      ],
      isGlutenFree: true,
      isVegetarian: true,
      isLactoseFree: false,
    ),
    Categories(
      id: 'm7',
      categories: [
        'c4',
      ],
      title: 'Pancakes',
      affordability: "Affordable",
      complexity: "Simple",
      imageUrl: 'assets/images/pancake-3529653_1280.jpg',
      duration: 20,
      ingredients: [
        '1 1/2 Cups all-purpose Flour',
        '3 1/2 Teaspoons Baking Powder',
        '1 Teaspoon Salt',
        '1 Tablespoon White Sugar',
        '1 1/4 cups Milk',
        '1 Egg',
        '3 Tablespoons Butter, melted',
      ],
      steps: [
        'In a large bowl, sift together the flour, baking powder, salt and sugar.',
        'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
        'Heat a lightly oiled griddle or frying pan over medium high heat.',
        'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.',
      ],
      isGlutenFree: true,
      isVegetarian: true,
      isLactoseFree: false,
    ),
    Categories(
      id: 'm8',
      categories: [
        'c4',
        'c10',
      ],
      title: 'chocolate Icecream',
      affordability: "Pricey",
      complexity: " Challenging",
      imageUrl: 'assets/images/icecream.jpg',
      duration: 35,
      ingredients: [
        ' ¾ cup sugar',
        '1 cup milk',
        '¼ teaspoon salt',
        '2 tablespoons unsweetened cocoa powder',
        ' 3 egg yolk, lightly beaten'
            '2 ounces semisweet chocolate, chopped',
        '2 cups heavy cream',
        '1 teaspoon vanilla extract',
      ],
      steps: [
        'Combine sugar, milk, salt, and cocoa powder in a saucepan over medium heat, stirring constantly. Bring to a simmer. Place the egg yolks into a small bowl. Gradually stir in about 1/2 cup of the hot liquid. and return to the saucepan. Heat until thickened, but do not boil. Remove from the heat, and stir in the chopped chocolate until chocolate is melted. Pour into a chilled bowl, and refrigerate for about two hours until cold, stirring occasionally.',
        ' When chocolate mixture has completely cooled, stir in the cream, and vanilla. Pour into an ice cream maker, and freeze according to manufacturer\'s directions',
      ],
      isGlutenFree: true,
      isVegetarian: true,
      isLactoseFree: false,
    ),
    Categories(
      id: 'm9',
      categories: [
        'c4',
      ],
      title: 'Chocolate Souffle',
      affordability: " Affordable",
      complexity: "Hard",
      imageUrl: 'assets/images/chocolate.png',
      duration: 45,
      ingredients: [
        '1 Teaspoon melted Butter',
        '2 Tablespoons white Sugar',
        '2 Ounces 70% dark Chocolate, broken into pieces',
        '1 Tablespoon Butter',
        '1 Tablespoon all-purpose Flour',
        '4 1/3 tablespoons cold Milk',
        '1 Pinch Salt',
        '1 Pinch Cayenne Pepper',
        '1 Large Egg Yolk',
        '2 Large Egg Whites',
        '1 Pinch Cream of Tartar',
        '1 Tablespoon white Sugar',
      ],
      steps: [
        'Preheat oven to 190°C. Line a rimmed baking sheet with parchment paper.',
        'Brush bottom and sides of 2 ramekins lightly with 1 teaspoon melted butter; cover bottom and sides right up to the rim.',
        'Add 1 tablespoon white sugar to ramekins. Rotate ramekins until sugar coats all surfaces.',
        'Place chocolate pieces in a metal mixing bowl.',
        'Place bowl over a pan of about 3 cups hot water over low heat.',
        'Melt 1 tablespoon butter in a skillet over medium heat. Sprinkle in flour. Whisk until flour is incorporated into butter and mixture thickens.',
        'Whisk in cold milk until mixture becomes smooth and thickens. Transfer mixture to bowl with melted chocolate.',
        'Add salt and cayenne pepper. Mix together thoroughly. Add egg yolk and mix to combine.',
        'Leave bowl above the hot (not simmering) water to keep chocolate warm while you whip the egg whites.',
        'Place 2 egg whites in a mixing bowl; add cream of tartar. Whisk until mixture begins to thicken and a drizzle from the whisk stays on the surface about 1 second before disappearing into the mix.',
        'Add 1/3 of sugar and whisk in. Whisk in a bit more sugar about 15 seconds.',
        'whisk in the rest of the sugar. Continue whisking until mixture is about as thick as shaving cream and holds soft peaks, 3 to 5 minutes.',
        'Transfer a little less than half of egg whites to chocolate.',
        'Mix until egg whites are thoroughly incorporated into the chocolate.',
        'Add the rest of the egg whites; gently fold into the chocolate with a spatula, lifting from the bottom and folding over.',
        'Stop mixing after the egg white disappears. Divide mixture between 2 prepared ramekins. Place ramekins on prepared baking sheet.',
        'Bake in preheated oven until scuffles are puffed and have risen above the top of the rims, 12 to 15 minutes.',
      ],
      isGlutenFree: true,
      isVegetarian: false,
      isLactoseFree: false,
    ),
    Categories(
      id: 'm10',
      categories: [
        'c2',
        'c5',
        'c10',
      ],
      title: 'Asparagus Salad with Cherry Tomatoes',
      affordability: "Luxurious",
      complexity: "Simple",
      imageUrl: 'assets/images/salad.png',
      duration: 30,
      ingredients: [
        'White and Green Asparagus',
        '30g Pine Nuts',
        '300g Cherry Tomatoes',
        'Salad',
        'Salt, Pepper and Olive Oil'
      ],
      steps: [
        'Wash, peel and cut the asparagus',
        'Cook in salted water',
        'Salt and pepper the asparagus',
        'Roast the pine nuts',
        'Halve the tomatoes',
        'Mix with asparagus, salad and dressing',
        'Serve with Baguette'
      ],
      isGlutenFree: true,
      isVegetarian: true,
      isLactoseFree: true,
    ),  id: 'm6',
      categories: [
        'c5',
        'c10',
      ],
      title: 'Delicious Orange Mousse',
      affordability: "Affordable",
      complexity: " Hard",
      imageUrl: 'assets/images/orange.png',
      d*/
  ];

  List<Categories> getCategoriesdetails(String category) {
    // getting the data from the server and display it
    return cat;
  }

  Categories get user => _category;

  void setUser(Map<String, dynamic> cat) {
    _category = Categories.fromJson(cat);

    // print('after set ${user.token}');
    notifyListeners();
  }

  void setUserFromModel(Categories cat) {
    _category = cat;
    notifyListeners();
  }
}
