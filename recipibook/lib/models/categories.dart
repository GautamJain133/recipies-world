class Categories {
  String categories;
  String title;
  String affordability;
  String complexity;
  List<String> imageUrl;
  String duration;
  String ingredients;
  String steps;
  bool isGlutenFree;
  bool isVegetarian;

  Categories({
    required this.categories,
    required this.title,
    required this.affordability,
    required this.complexity,
    required this.imageUrl,
    required this.duration,
    required this.ingredients,
    required this.steps,
    required this.isGlutenFree,
    required this.isVegetarian,
  });

  factory Categories.fromJson(Map<String, dynamic> json) => Categories(
        categories: json['categories'] as String,
        title: json['title'] as String,
        affordability: json['affordability'] as String,
        complexity: json['complexity'] as String,
        imageUrl: json['imageUrl'] as List<String>,
        duration: json['duration'] as String,
        ingredients: json['ingredients'] as String,
        steps: json['steps'] as String,
        isGlutenFree: json['isGlutenFree'] as bool,
        isVegetarian: json['isVegetarian'] as bool,
      );

  Map toJson() {
    // print(this.title);
    // print(this.categories);
    // print(this.affordability);
    // print(this.complexity);
    // print(this.imageUrl);
    // print(this.duration);
    // print(this.steps);

    return {
      'categories': categories,
      'title': title,
      'affordability': affordability,
      'complexity': complexity,
      'imageUrl': imageUrl,
      'duration': duration,
      'ingredients': ingredients,
      'steps': steps,
      'isGlutenFree': isGlutenFree,
      'isVegetarian': isVegetarian,
    };
  }
}

 


 /*categories: category,
          title: title,
          affordability: affordability,
          complexity: complexity,
          imageUrl: imageUrls,
          duration: duration,
          ingredients: ingredients,
          steps: steps,
          isGlutenFree: isglutenefree,
          isVegetarian: isvegetarian);
          */