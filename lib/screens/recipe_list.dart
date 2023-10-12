import 'package:flutter/material.dart';
import 'package:mad_pinoy_recipe_3c/components/recipe_tile.dart';
import 'package:mad_pinoy_recipe_3c/data/back_data.dart';
import 'package:mad_pinoy_recipe_3c/models/category.dart';

class RecipeListScreen extends StatelessWidget {
  RecipeListScreen({super.key, required this.category});

  Category category;
  var recipeList = [];

  @override
  Widget build(BuildContext context) {
    recipeList =
        RECIPES.where((recipe) => recipe.categoryId == category.id).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.name),
        centerTitle: true,
        backgroundColor: category.color,
      ),
      body: ListView.builder(
          itemCount: recipeList.length,
          itemBuilder: (_, index) {
            return RecipeTile(recipeList[index]);
          }),
    );
  }
}
