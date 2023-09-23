import 'package:fitness_app/Models/Workout_Model.dart';
import 'package:fitness_app/constants.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkoutDetailScreen extends StatelessWidget {
  final Workout workout;
  const WorkoutDetailScreen({super.key, required this.workout});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(workout.name, style: kAppBarTextStyle),
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: kTextColor),
      ),
      body: ListView.builder(
        itemCount: workout.exercises.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListTile(
              title: Text(
                workout.exercises[index].name,
                style: GoogleFonts.merriweather(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                '\n Sets: ${workout.exercises[index].sets}, \n\n\n Reps: ${workout.exercises[index].reps}, \n\n\n Weight: ${workout.exercises[index].weight} lbs',
                style: GoogleFonts.inconsolata(fontWeight: FontWeight.w700),
              ),
              trailing: Image.asset(
                workout.exercises[index].imageUrl,
              ),
            ),
          );
        },
      ),
    );
  }
}
