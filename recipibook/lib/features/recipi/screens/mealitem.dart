import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipibook/features/recipi/screens/recipidetails.dart';

import 'package:recipibook/models/categories.dart';
import 'package:recipibook/provider/categories_provider.dart';

import '../../../common/drawer.dart';

class MealItem extends StatefulWidget {
  static const routeName = '/MealItem';
  final String category;

  const MealItem({Key? key, required this.category}) : super(key: key);

  @override
  State<MealItem> createState() => _MealItemState();
}

class _MealItemState extends State<MealItem> {
  List<Categories> cat = [];
  @override
  void didChangeDependencies() {
    cat = Provider.of<Categoriesprovider>(context)
        .getCategoriesdetails(widget.category);
    super.didChangeDependencies();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const MainDrawer(),
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.category),
              const Text(
                "Developed by gautam",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: cat.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                  onTap: () => {
                        Navigator.popAndPushNamed(
                            context, MealDetailScreen.routeName,
                            arguments: cat[index])
                      },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15)),
                              child: Image.network(
                                "https://picsum.photos/200",
                                height: 250,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              right: 10,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 20),
                                width: 270,
                                color: Colors.black54,
                                child: Text(
                                  cat[index].title,
                                  style: const TextStyle(
                                    fontSize: 26,
                                    color: Colors.white,
                                  ),
                                  softWrap: true,
                                  overflow: TextOverflow.fade,
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  const Icon(Icons.schedule),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  // ignore: prefer_adjacent_string_concatenation
                                  Text('${cat[index].duration} min'),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.work),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  Text(cat[index].complexity),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.monetization_on),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  Text(cat[index].affordability),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ));
            }));
  }
}
