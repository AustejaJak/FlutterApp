import 'package:flutter/material.dart';

class InfoTextColumn extends StatelessWidget {
  final List<String> texts;
  final EdgeInsetsGeometry padding;
  final bool showLines;

  const InfoTextColumn({
    required this.texts,
    required this.padding,
    required this.showLines,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: buildTextWidgets(),
    );
  }

  List<Widget> buildTextWidgets() {
    return texts
        .map((text) => Padding(
              padding: padding,
              child: Row(
                children: [
                  Text(text, style: const TextStyle(fontSize: 18)),
                  if (showLines)
                    Container(
                      width: 100,
                      height: 2,
                      margin: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromARGB(255, 190, 190, 190)
                      ),
                    ),
                ],
              ),
            ))
        .toList();
  }
}
