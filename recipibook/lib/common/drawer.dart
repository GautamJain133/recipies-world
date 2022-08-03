import 'package:flutter/material.dart';
import 'package:recipibook/features/addproduct/screen/addrecipies.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        Container(
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Colors.orangeAccent,
            child: Text(
              "coooking up!",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Theme.of(context).primaryColor),
            )),
        const SizedBox(
          height: 20,
        ),
        ListTile(
          leading: const Icon(
            Icons.restaurant,
            size: 26,
          ),
          title: const Text(
            "meals",
            style: TextStyle(
              fontFamily: 'RobotoCondensed',
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/');
          },
        ),
        const SizedBox(
          height: 20,
        ),
        ListTile(
          leading: const Icon(
            Icons.settings,
            size: 26,
          ),
          title: const Text(
            "Filters",
            style: TextStyle(
              fontFamily: 'RobotoCondensed',
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/filters');
          },
        ),
        const SizedBox(
          height: 20,
        ),
        ListTile(
          leading: const Icon(
            Icons.settings,
            size: 26,
          ),
          title: const Text(
            "AddProduct",
            style: TextStyle(
              fontFamily: 'RobotoCondensed',
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: () {
            Navigator.pushNamed(context, AddProduct.routeName);
          },
        )
      ],
    ));
  }
}
