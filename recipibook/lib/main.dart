import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipibook/features/communitypage/communityscreen.dart';
import 'package:recipibook/provider/categories_provider.dart';
import 'package:recipibook/routes.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => Categoriesprovider(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipies_Book',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: "Raleway",
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
            bodyText2: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
            headline6: const TextStyle(
                fontSize: 24,
                fontFamily: "RobotoCondensed",
                fontWeight: FontWeight.bold)),
      ),
      initialRoute: CommunityServer.routeName,
      onGenerateRoute: (settings) {
        return generateRoute(settings);
      },
    );
  }
}
