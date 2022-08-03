// String id;
//   List<String> categories;
//   String title;
//   String affordability;
//   String complexity;
//   String imageUrl;
//   int duration;
//   List<String> ingredients;
//   List<String> steps;
//   bool isGlutenFree;
//   bool isVegetarian;
//   bool isLactoseFree;

import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:dotted_border/dotted_border.dart';
import 'package:recipibook/features/addproduct/services/addrecipi.dart';

import '../../../constants/utils.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({Key? key}) : super(key: key);
  static const routeName = './addProduct';

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  bool isVegetarian = false;
  bool isGluteneFree = false;
  String category = "snacks";
  List<File> images = [];

  TextEditingController titleController = TextEditingController();
  TextEditingController affordabilityController = TextEditingController();
  TextEditingController complexityController = TextEditingController();
  TextEditingController durationController = TextEditingController();
  TextEditingController ingredientController = TextEditingController();
  TextEditingController stepsController = TextEditingController();

  AddRecipiServices addRecipiServices = AddRecipiServices();
  void selectImages() async {
    images = await pickImages();
    setState(() {});
  }

  void uploadRecipi() {
    if (_formKey.currentState!.validate()) {
      addRecipiServices.uploadRecipi(
          context: context,
          title: titleController.text,
          affordability: affordabilityController.text,
          complexity: complexityController.text,
          images: images,
          category: category,
          ingredients: ingredientController.text,
          steps: stepsController.text,
          isvegetarian: isVegetarian,
          isglutenefree: isGluteneFree,
          duration: durationController.text);
    }
  }

  @override
  void dispose() {
    titleController.dispose();
    affordabilityController.dispose();
    complexityController.dispose();
    durationController.dispose();
    ingredientController.dispose();
    stepsController.dispose();
    super.dispose();
  }

  final _formKey = GlobalKey<FormState>();
  List<String> recipiCategories = [
    'snacks',
    'c2',
    'c3',
    'c4',
    'c5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('addRecipies'),
      ),
      body: SingleChildScrollView(
          child: Form(
              key: _formKey,
              child: Column(
                children: [
                  images.isNotEmpty
                      ? CarouselSlider(
                          items: images.map(
                            (i) {
                              return Builder(
                                builder: (BuildContext context) => Image.file(
                                  i,
                                  fit: BoxFit.cover,
                                  height: 200,
                                ),
                              );
                            },
                          ).toList(),
                          options: CarouselOptions(
                            viewportFraction: 1,
                            height: 200,
                          ),
                        )
                      : GestureDetector(
                          onTap: selectImages,
                          child: DottedBorder(
                            borderType: BorderType.RRect,
                            radius: const Radius.circular(10),
                            dashPattern: const [10, 4],
                            strokeCap: StrokeCap.round,
                            child: Container(
                              width: double.infinity,
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.folder_open,
                                    size: 40,
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Select Product Inages',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey.shade400),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    cursorColor: Colors.orangeAccent,
                    controller: titleController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Recipi Name',
                        hoverColor: Colors.lightGreenAccent),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: affordabilityController,
                    decoration: const InputDecoration(
                      hintText: 'Affordability',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: complexityController,
                    decoration: const InputDecoration(
                      hintText: 'Complexity',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: durationController,
                    decoration: const InputDecoration(
                      hintText: 'duration',
                    ),
                    validator: (value) {
                      if (value == null || int.parse(value) <= 0) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: ingredientController,
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: const InputDecoration(
                      hintText: 'Ingredients',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: stepsController,
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: const InputDecoration(
                      hintText: 'Steps',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  SwitchListTile(
                    title: const Text('Isvegetarian'),
                    value: isVegetarian,
                    onChanged: (bool value) {
                      setState(() {
                        isVegetarian = value;
                      });
                    },
                    secondary: const Icon(Icons.verified),
                  ),
                  SwitchListTile(
                    title: const Text('IsGluteneFree'),
                    value: isGluteneFree,
                    onChanged: (bool value) {
                      setState(() {
                        isGluteneFree = value;
                      });
                    },
                    secondary: const Icon(Icons.verified),
                  ),
                  Row(
                    children: [
                      const Text("categories"),
                      const SizedBox(
                        width: 50,
                      ),
                      DropdownButton<String>(
                        value: category,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            category = newValue!;
                          });
                        },
                        items: recipiCategories
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  ElevatedButton(
                      onPressed: uploadRecipi, child: const Text('Submit'))
                ],
              ))),
    );
  }
}
