import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 700,
            height: 600,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 226, 226, 226),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Left Text", style: TextStyle(fontSize: 18)),
                      SizedBox(height: 10),
                      Text("Level 5", style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  const SizedBox(width: 20),
                  SvgPicture.asset(
                    'assets/images/man_figure.svg',
                    height: 450,
                    width: 70,
                  ),
                  const SizedBox(width: 20),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Right Text", style: TextStyle(fontSize: 18)),
                      SizedBox(height: 10),
                      Text("Level 5", style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 400,
            height: 600,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 226, 226, 226),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ],
      ),
    );
  }
}
