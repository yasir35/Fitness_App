import 'package:fitness_app/Models/Workout_Model.dart';
import 'package:fitness_app/UI/Workout_Tracker/workout_detail.dart';
import 'package:fitness_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkoutTracking extends StatefulWidget {
  const WorkoutTracking({super.key});

  @override
  State<WorkoutTracking> createState() => _WorkoutTrackingState();
}

class _WorkoutTrackingState extends State<WorkoutTracking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Workout Tracker', style: kAppBarTextStyle),
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: kTextColor),
        ),
        body: ListView.builder(
            itemCount: workouts.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  workouts[index].name,
                  style: GoogleFonts.merriweather(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Level: ${workouts[index].level}',
                  style: GoogleFonts.inconsolata(fontWeight: FontWeight.w700),
                ),
                trailing: Image.asset(workouts[index].imageUrl),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          WorkoutDetailScreen(workout: workouts[index]),
                    ),
                  );
                },
              );
            }));
  }
}
