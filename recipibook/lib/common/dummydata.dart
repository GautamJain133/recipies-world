import 'package:flutter/material.dart';

// ignore: camel_case_types
class categories {
  final String category;
  final String title;
  final Color color;

  categories(
      {required this.category, required this.title, required this.color});
}

final dummycategories = [
  categories(
    category: 'c1',
    title: 'Gautam Favourite',
    color: Colors.purple,
  ),
  categories(
    category: 'c2',
    title: 'Quick & Easy',
    color: Colors.red,
  ),
  categories(
    category: 'c3',
    title: 'Indian',
    color: Colors.orange,
  ),
  categories(
    category: 'c4',
    title: 'sweet',
    color: Colors.amber,
  ),
  categories(
    category: 'c5',
    title: 'Light & Lovely',
    color: Colors.blue,
  ),
  categories(
    category: 'c6',
    title: 'Fastfood',
    color: Colors.green,
  ),
  categories(
    category: 'c7',
    title: 'Breakfast',
    color: Colors.lightBlue,
  ),
  categories(
    category: 'c8',
    title: 'Snack\'s',
    color: Colors.lightGreen,
  ),
  categories(
    category: 'c9',
    title: 'Winter',
    color: Colors.pink,
  ),
  categories(
    category: 'c10',
    title: 'Summer',
    color: Colors.teal,
  ),
];
