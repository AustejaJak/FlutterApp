import 'package:flutter/material.dart';
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
  String get svgPath => widget.svgPath;

  Color headColor = Colors.black;
  Color bodyColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          GestureDetector(
            onTapDown: (_) => setState(() {
              bodyColor = const Color.fromARGB(255, 219, 172, 84);
            }),
            onTapUp: (_) => setState(() {
              bodyColor = const Color.fromARGB(255, 219, 172, 84);
            }),
            child: SvgPicture.asset(
              svgPath,
              colorFilter: ColorFilter.mode(bodyColor, BlendMode.srcIn),
              semanticsLabel: 'Body',
              width: 500,
              height: 500,
            ),
          ),
          // Positioned(
          //     top: 20,
          //     child: MouseRegion(
          //       onEnter: (_) => setState(() {
          //         headColor = Colors.yellow;
          //       }),
          //       onExit: (_) => setState(() {
          //         headColor = Colors.black;
          //       }),
          //       child: SvgPicture.asset(
          //         svgPath,
          //         colorFilter: ColorFilter.mode(bodyColor, BlendMode.srcIn),
          //         semanticsLabel: 'Body',
          //         width: 50,
          //         height: 50,
          //       ),
          //     )
          // )
        ],
      ),
    );
  }
}
