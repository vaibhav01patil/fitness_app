import 'package:fitness_app/welcome2.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/welcome1.dart';
import 'package:fitness_app/workoutshedule.dart';

void main() {
  runApp(const FitnessApp()); 
}

class FitnessApp extends StatelessWidget {
  const FitnessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FitnessApp",
      home: FitnessAppUI(),
    );
  }
}
