import 'package:flutter/material.dart';

import 'package:recipibook/features/addproduct/screen/addrecipies.dart';
import 'package:recipibook/features/communitypage/communityscreen.dart';
import 'package:recipibook/features/home/screens/homescreen.dart';
import 'package:recipibook/features/recipi/screens/mealitem.dart';
import 'package:recipibook/features/recipi/screens/recipidetails.dart';

import 'models/categories.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case (HomeScreen.routeName):
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomeScreen(),
      );

    case (MealItem.routeName):
      {
        String category = routeSettings.arguments as String;
        return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => MealItem(
                  category: category,
                ));
      }

    case (MealDetailScreen.routeName):
      {
        var args = routeSettings.arguments as Categories;

        return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => MealDetailScreen(
                  cat: args,
                ));
      }

    case (AddProduct.routeName):
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AddProduct(),
      );
    case (CommunityServer.routeName):
      {
      
        return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const CommunityServer(
                 
                ));
      }
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(child: Text("no page exist sorry!!")),
        ),
      );
  }
}
