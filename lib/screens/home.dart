import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/info_card.dart';
import 'package:flutter_app/widgets/workout_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InfoCard(
            svgPath: 'assets/images/man_figure_legs.svg',
          ),
          WorkoutCard(),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
       body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Home(),
      ),
    );
  }
}
