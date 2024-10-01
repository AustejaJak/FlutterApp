import 'package:flutter/material.dart';

class TappableArea extends StatelessWidget {
  final double left;
  final double top;
  final double width;
  final double height;
  final VoidCallback onTap;

  const TappableArea({
    super.key,
    required this.left,
    required this.top,
    required this.width,
    required this.height,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      top: top,
      width: width,
      height: height,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          color: Colors.transparent,
        ),
      ),
    );
  }
}