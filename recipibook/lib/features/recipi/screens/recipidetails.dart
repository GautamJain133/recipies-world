import 'package:flutter/material.dart';
import 'package:recipibook/models/categories.dart';

class MealDetailScreen extends StatefulWidget {
  static const routeName = "/meal-detail";

  final Categories cat;

  const MealDetailScreen({
    Key? key,
    required this.cat,
  }) : super(key: key);

  @override
  State<MealDetailScreen> createState() => _MealDetailScreenState();
}

class _MealDetailScreenState extends State<MealDetailScreen> {
  Widget buildsectiontile(BuildContext context, String text) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(text, style: Theme.of(context).textTheme.headline6),
    );
  }

  Widget buildcontainer(Widget child, BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width * 0.85,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.cat.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
                width: double.infinity,
                child: Image.network(
                  "https://picsum.photos/200",
                  fit: BoxFit.cover,
                )),
            buildsectiontile(context, "Ingredients"),
            buildcontainer(
                ListView.builder(
                  itemBuilder: (context, index) => Card(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      child: Text(widget.cat.ingredients[index]),
                    ),
                  ),
                  itemCount: widget.cat.ingredients.length,
                ),
                context),
            buildsectiontile(context, "Steps"),
            buildcontainer(
                ListView.builder(
                  itemBuilder: (context, index) => Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          child: Text('# ${index + 1}'),
                        ),
                        title: Text(widget.cat.steps[index]),
                      ),
                      const Divider()
                    ],
                  ),
                  itemCount: widget.cat.steps.length,
                ),
                context)
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(isfavourite(mealid) ? Icons.star : Icons.star_border),
      //   onPressed: () => togglefavourite(mealid),
      // ),
    );
  }
}
