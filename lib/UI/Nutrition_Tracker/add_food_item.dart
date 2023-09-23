import 'package:fitness_app/Models/Nutrition_Model.dart';
import 'package:fitness_app/constants.dart';
import 'package:flutter/material.dart';

class AddFoodItemForm extends StatefulWidget {
  final Function(FoodItem) addFoodItem;

  const AddFoodItemForm({super.key, required this.addFoodItem});

  @override
  _AddFoodItemFormState createState() => _AddFoodItemFormState();
}

class _AddFoodItemFormState extends State<AddFoodItemForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController caloriesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16, right: 16, left: 16),
      child: Column(
        children: [
          TextField(
            controller: nameController,
            decoration: InputDecoration(
                labelText: 'Food Name', labelStyle: kHomeTextStyle),
          ),
          TextField(
            controller: caloriesController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                labelText: 'Calories', labelStyle: kHomeTextStyle),
          ),
          ElevatedButton(
            onPressed: () {
              final String name = nameController.text;
              final int calories = int.tryParse(caloriesController.text) ?? 0;

              if (name.isNotEmpty && calories > 0) {
                widget.addFoodItem(FoodItem(name: name, calories: calories));
                nameController.clear();
                caloriesController.clear();
              }
            },
            child: const Text('Add Food Item'),
          ),
        ],
      ),
    );
  }
}
