class Workout {
  final String name;
  final String level;
  final List<Exercise> exercises;
  final String imageUrl;

  Workout({
    required this.name,
    required this.level,
    required this.exercises,
    required this.imageUrl,
  });
}

class Exercise {
  final String name;
  final int sets;
  final int reps;
  final double weight;
  final String imageUrl;

  Exercise({
    required this.name,
    required this.sets,
    required this.reps,
    required this.weight,
    required this.imageUrl,
  });
}

List<Workout> workouts = [
  Workout(
    name: 'Push-Ups',
    level: 'Beginner',
    exercises: [
      Exercise(
          name: 'Push-Ups',
          sets: 3,
          reps: 10,
          weight: 0,
          imageUrl: 'assets/images/11.png'),
    ],
    imageUrl: 'assets/images/11.png',
  ),
  Workout(
    name: 'Squats',
    level: 'Intermediate',
    exercises: [
      Exercise(
          name: 'Squats',
          sets: 4,
          reps: 12,
          weight: 0,
          imageUrl: 'assets/images/12.png'),
    ],
    imageUrl: 'assets/images/12.png',
  ),
  Workout(
    name: 'Bench Press',
    level: 'Advanced',
    exercises: [
      Exercise(
          name: 'Bench Press',
          sets: 4,
          reps: 8,
          weight: 135,
          imageUrl: 'assets/images/13.png'),
    ],
    imageUrl: 'assets/images/13.png',
  ),
  Workout(
    name: 'Pull-Ups',
    level: 'Intermediate',
    exercises: [
      Exercise(
          name: 'Pull-Ups',
          sets: 4,
          reps: 8,
          weight: 0,
          imageUrl: 'assets/images/14.png'),
    ],
    imageUrl: 'assets/images/14.png',
  ),
  Workout(
    name: 'Deadlifts',
    level: 'Advanced',
    exercises: [
      Exercise(
        name: 'Deadlifts',
        sets: 5,
        reps: 5,
        weight: 225,
        imageUrl: 'assets/images/15.png',
      ),
    ],
    imageUrl: 'assets/images/15.png',
  ),
  Workout(
    name: 'Planks',
    level: 'Beginner',
    exercises: [
      Exercise(
          name: 'Planks',
          sets: 3,
          reps: 30,
          weight: 0,
          imageUrl: 'assets/images/16.png'),
    ],
    imageUrl: 'assets/images/16.png',
  ),
  Workout(
    name: 'Lunges',
    level: 'Intermediate',
    exercises: [
      Exercise(
        name: 'Lunges',
        sets: 4,
        reps: 12,
        weight: 0,
        imageUrl: 'assets/images/17.png',
      ),
    ],
    imageUrl: 'assets/images/17.png',
  ),
  Workout(
    name: 'Mountain Climbers',
    level: 'Beginner',
    exercises: [
      Exercise(
        name: 'Mountain Climbers',
        sets: 3,
        reps: 20,
        weight: 0,
        imageUrl: 'assets/images/18.png',
      ),
    ],
    imageUrl: 'assets/images/18.png',
  ),
];
