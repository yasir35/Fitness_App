import 'package:fitness_app/Models/Nutrition_Model.dart';
import 'package:fitness_app/UI/Nutrition_Tracker/add_food_item.dart';
import 'package:fitness_app/UI/Nutrition_Tracker/food_log_list.dart';
import 'package:fitness_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NutritionState extends ChangeNotifier {
  List<FoodItem> foodLog = [];
  int dailyCalories = 0;

  void addFoodItem(FoodItem food) {
    foodLog.add(food);
    dailyCalories += food.calories;
    notifyListeners();
  }
}

class NutritionTracker extends StatelessWidget {
  const NutritionTracker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nutritionState = Provider.of<NutritionState>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Nutrition Tracking', style: kAppBarTextStyle),
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: kTextColor),
      ),
      body: Column(
        children: <Widget>[
          Text('Daily Calorie Intake: ${nutritionState.dailyCalories} kcal',
              style: kHomeTextStyle),
          FoodLogList(foodLog: nutritionState.foodLog),
          AddFoodItemForm(addFoodItem: nutritionState.addFoodItem),
        ],
      ),
    );
  }
}
