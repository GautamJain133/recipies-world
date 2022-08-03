import 'package:flutter/material.dart';
import 'package:recipibook/features/recipi/screens/mealitem.dart';

import '../../../common/dummydata.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: dummycategories.map((cate) {
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, MealItem.routeName,
                  arguments: cate.category);
            },
            splashColor: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(15),
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [cate.color.withOpacity(0.7), Colors.cyan],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                cate.title,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          );
        }).toList());
  }
}
