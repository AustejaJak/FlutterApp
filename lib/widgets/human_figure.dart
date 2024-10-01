import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/tappable_area.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HumanFigure extends StatefulWidget {
  final String svgPath;

  const HumanFigure({super.key, required this.svgPath});

  @override
  State<StatefulWidget> createState() {
    return HumanFigureState();
  }
}

class HumanFigureState extends State<HumanFigure> {
  String currentSvg = ''; // Holds the current SVG based on taps

  @override
  void initState() {
    super.initState();
    currentSvg = widget.svgPath; // Set initial SVG
  }

  void updateSvg(String newSvgPath) {
    setState(() {
      currentSvg = newSvgPath;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          SvgPicture.asset(
            currentSvg,
            semanticsLabel: 'Body',
            width: 300,
            height: 500,
          ),
          TappableArea(
            left: 130,
            top: 85,
            width: 45,
            height: 150,
            onTap: () {
              updateSvg('assets/images/man_figure_arms.svg'); // Load arms SVG
            },
          ),
          TappableArea(
            left: 38,
            top: 240,
            width: 100,
            height: 260,
            onTap: () {
              updateSvg('assets/images/man_figure_legs.svg'); // Load legs SVG
            },
          ),
          TappableArea(
            left: 43,
            top: 80,
            width: 92,
            height: 162,
            onTap: () {
              updateSvg('assets/images/man_figure_core.svg'); // Load core SVG
            },
          ),
          TappableArea(
            left: 0,
            top: 85,
            width: 45,
            height: 150,
            onTap: () {
              updateSvg('assets/images/man_figure_arms.svg'); // Load arms SVG
            },
          ),
          TappableArea(
            left: 0,
            top: 238,
            width: 23,
            height: 55,
            onTap: () {
              updateSvg('assets/images/man_figure_hands.svg'); // Load left hand SVG
            },
          ),
          TappableArea(
            left: 153,
            top: 238,
            width: 23,
            height: 55,
            onTap: () {
              updateSvg('assets/images/man_figure_hands.svg'); // Load right hand SVG
            },
          ),
        ],
      ),
    );
  }
}
