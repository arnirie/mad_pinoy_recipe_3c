import 'package:flutter/material.dart';
import 'package:mad_pinoy_recipe_3c/components/category_tile.dart';
import 'package:mad_pinoy_recipe_3c/data/back_data.dart';

class CategoryListScreen extends StatelessWidget {
  CategoryListScreen({super.key});

  var categoryList = CATEGORIES;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pinoy Recipes'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      // body: GridView.builder(
      //   padding: const EdgeInsets.all(8),
      //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2,
      //     childAspectRatio: 3 / 2,
      //     crossAxisSpacing: 10,
      //     mainAxisSpacing: 10,
      //   ),
      //   itemBuilder: (_, index) {
      //     var catNum = categoryList.length;
      //     bool rounded = false;
      //     if ([0, 1, catNum - 1, catNum - 2].contains(index)) {
      //       rounded = true;
      //     }
      //     return CategoryTile(
      //       category: categoryList[index],
      //       isRounded: rounded,
      //     );
      //   },
      //   itemCount: categoryList.length,
      // ),
      body: GridView(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        children: categoryList.map((element) {
          return CategoryTile(
            category: element,
          );
        }).toList(),
      ),
    );
  }
}

//categoryList.map(function(element) => return something) -> Iterable<something>.toList();