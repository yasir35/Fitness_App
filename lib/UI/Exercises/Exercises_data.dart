import 'package:fitness_app/Models/Exercises_model.dart';
import 'package:fitness_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExercisesData extends StatelessWidget {
  const ExercisesData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercise Info', style: kAppBarTextStyle),
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: kTextColor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: exercises.length,
          itemBuilder: (context, index) {
            final exercise = exercises[index];
            return ListTile(
              title: Text(exercise.name,
                  style: GoogleFonts.merriweather(fontWeight: FontWeight.bold)),
              subtitle: Text(exercise.description,
                  style: GoogleFonts.inconsolata(fontWeight: FontWeight.w700)),
              trailing: Image.network(exercise.imageUrl),
            );
          },
        ),
      ),
    );
  }
}
