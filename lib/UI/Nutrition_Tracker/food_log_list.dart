import 'package:fitness_app/Models/Nutrition_Model.dart';
import 'package:flutter/material.dart';

class FoodLogList extends StatelessWidget {
  final List<FoodItem> foodLog;

  const FoodLogList({super.key, required this.foodLog});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: foodLog.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(foodLog[index].name),
            subtitle: Text('${foodLog[index].calories} kcal'),
          );
        },
      ),
    );
  }
}
