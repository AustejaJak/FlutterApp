import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/human_figure.dart';
import 'package:flutter_app/widgets/info_text_column.dart';

class InfoCard extends StatelessWidget {
  final String svgPath;

  const InfoCard({super.key, required this.svgPath});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            Stack(
              alignment: Alignment.centerLeft,
              children: [
                const InfoTextColumn(
                  texts: ["Arm", "Core", "Hand", "Legs"],
                  padding: EdgeInsets.only(bottom: 50),
                  showLines: true,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: HumanFigure(svgPath: svgPath),
                ),
              ],
            ),
            const InfoTextColumn(
              texts: ["Level 5", "Total Reps", "Exercise time"],
              padding: EdgeInsets.only(bottom: 40),
              showLines: false,
            ),
          ],
        ),
      ),
    );
  }
}
