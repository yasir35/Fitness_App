import 'package:fitness_app/UI/Exercises/Exercises_data.dart';
import 'package:fitness_app/UI/Nutrition_Tracker/Nutrition_Tracker.dart';
import 'package:fitness_app/UI/Progress_Tracker/Progress_tracker.dart';
import 'package:fitness_app/UI/Workout_Tracker/workout_tracking.dart';
import 'package:fitness_app/constants.dart';
import 'package:fitness_app/extension.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = context.mediaQueryHeight;
    double screenWidth = context.mediaQueryWidth;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: screenHeight * 0.4,
            width: screenWidth,
            color: kBlueColor,
            child: Padding(
              padding: const EdgeInsets.only(right: 15, left: 15, top: 12),
              child: Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Hello & Welcome! \n Stay Healthy and Fit ....',
                            style: kAppBarTextStyle),
                        Image.asset('assets/images/5.png',
                            height: screenHeight * 0.1,
                            width: screenWidth * 0.2),
                      ],
                    ),
                    Image.asset(
                      'assets/images/4.png',
                      height: screenHeight * 0.2,
                      width: screenWidth,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const WorkoutTracking()));
                            },
                            child: Container(
                              width: screenWidth * 0.46,
                              height: screenHeight * 0.25,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/images/6.png',
                                      height: screenHeight * 0.2,
                                      width: screenWidth * 0.2),
                                  Text(
                                    'Workout Tracking',
                                    style: kHomeTextStyle,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ExercisesData()));
                            },
                            child: Container(
                              width: screenWidth * 0.46,
                              height: screenHeight * 0.25,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/images/7.png',
                                      height: screenHeight * 0.2,
                                      width: screenWidth * 0.2),
                                  Text('Exercises', style: kHomeTextStyle),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      10.ph,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const NutritionTracker()));
                            },
                            child: Container(
                              width: screenWidth * 0.46,
                              height: screenHeight * 0.25,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/images/10.png',
                                      height: screenHeight * 0.2,
                                      width: screenWidth * 0.2),
                                  Text('Nutrition Tracking',
                                      style: kHomeTextStyle),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ProgressTracker()));
                            },
                            child: Container(
                              width: screenWidth * 0.46,
                              height: screenHeight * 0.25,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/images/8.png',
                                      height: screenHeight * 0.2,
                                      width: screenWidth * 0.2),
                                  Text('Progress Tracking',
                                      style: kHomeTextStyle),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
