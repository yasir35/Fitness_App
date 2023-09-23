class Exercise {
  final String name;
  final String description;
  final String imageUrl;

  Exercise({
    required this.name,
    required this.description,
    required this.imageUrl,
  });
}

List<Exercise> exercises = [
  Exercise(
    name: 'Push-Ups',
    description:
        'A classic upper-body exercise that targets the chest and triceps. Push-ups are a classic bodyweight exercise that target the chest, shoulders, and triceps while also engaging the core for stability. They can be modified to suit various fitness levels and are perfect for building upper body strength and endurance.',
    imageUrl: 'assets/images/11.png',
  ),
  Exercise(
    name: 'Squats',
    description:
        'A lower-body exercise that targets the quadriceps and glutes. Squats are a fundamental lower body exercise, working the quadriceps, hamstrings, and glutes, helping to build strength and improve overall lower body stability. Variations like goblet squats or Bulgarian split squats add diversity to leg workouts.',
    imageUrl: 'assets/images/12.png',
  ),
  Exercise(
    name: 'Bench Press',
    description:
        'A compound exercise that primarily targets the chest, shoulders, and triceps. Bench press is a staple in weightlifting routines, primarily focusing on the chest, shoulders, and triceps, promoting upper body strength and muscle development. It is often used as a benchmark for tracking progress in strength training programs.',
    imageUrl: 'assets/images/13.png',
  ),
  Exercise(
    name: 'Pull-Ups',
    description:
        'An upper-body exercise that targets the back, biceps, and shoulders. Pull-ups challenge the back and biceps, requiring you to lift your entire body weight, enhancing upper body strength and improving grip. Wide grip, narrow grip, and chin-ups offer versatility in targeting different muscle groups.',
    imageUrl: 'assets/images/14.png',
  ),
  Exercise(
    name: 'Deadlifts',
    description:
        'A compound exercise that targets the lower back, glutes, and hamstrings. Deadlifts are a powerful compound movement that engages multiple muscle groups, including the back, hamstrings, and glutes, promoting overall strength and functional fitness. They are essential for developing a strong posterior chain.',
    imageUrl: 'assets/images/15.png',
  ),
  Exercise(
    name: 'Planks',
    description:
        'A core-strengthening exercise that helps improve core stability and endurance. Planks are an isometric exercise that strengthens the core, promoting stability and helping to prevent lower back pain. Variations like side planks or plank leg lifts can add intensity to core workouts.',
    imageUrl: 'assets/images/16.png',
  ),
  Exercise(
    name: 'Lunges',
    description:
        'A lower-body exercise that targets the quadriceps, hamstrings, and glutes. Lunges are a versatile leg exercise that targets the quadriceps, hamstrings, and glutes, aiding in lower body strength development and balance. Reverse lunges or walking lunges provide variety to leg training routines.',
    imageUrl: 'assets/images/17.png',
  ),
  Exercise(
    name: 'Mountain Climbers',
    description:
        'A full-body exercise that enhances cardiovascular fitness and core strength. Mountain climbers are a dynamic full-body exercise that enhances cardiovascular fitness while engaging the core, shoulders, and legs, making it a great addition to any workout routine. They also improve coordination and agility, making them ideal for HIIT workouts.',
    imageUrl: 'assets/images/18.png',
  ),
];
