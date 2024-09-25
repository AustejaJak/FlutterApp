import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/vertical_slider.dart';

class WorkoutCard extends StatelessWidget{
  const WorkoutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children:[
        Container(
        width: 400,
        height: 600,
        decoration: BoxDecoration(
        color:  const Color.fromARGB(255, 226, 226, 226),
        borderRadius: BorderRadius.circular(20),
        ),
      ),
      const VerticalSlider(),
      ],
    );
  }
}