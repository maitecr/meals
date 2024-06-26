// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../models/category.dart';
import '../screens/categories_meals_screen.dart';
import '../utils/app_routes.dart';

class CategoryItem extends StatelessWidget {

  final Category category;

  const CategoryItem(this.category);

  void _selectCategory(BuildContext context) {  
  /*  Navigator.of(context).push(MaterialPageRoute(
        builder: (_) {
          return CategoryMealsScreen(category);
        },
        )
    ); */

    Navigator.of(context).pushNamed(
      AppRoutes.CATEGORIES_MEALS,
      arguments: category 
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
                category.color.withOpacity(0.5),
                category.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
    );
  }
}