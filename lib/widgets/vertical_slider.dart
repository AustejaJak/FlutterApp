import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class VerticalSlider extends StatefulWidget {
  final double initialValue;

  const VerticalSlider({super.key, this.initialValue = 40.0});

  @override
  State<StatefulWidget> createState() {
    return _VerticalSliderState();
  }
}

class _VerticalSliderState extends State<VerticalSlider> {
  late double currentValue;

  @override
  void initState() {
    super.initState();
    currentValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SfSlider.vertical(
        min: 0.0,
        max: 70.0,
        value: currentValue,
        interval: 30,
        showTicks: false,
        showLabels: false,
        enableTooltip: false,
        minorTicksPerInterval: 1,
        inactiveColor: Colors.grey,
        onChanged: (dynamic value) {
          setState(() {
            currentValue = value;
          });
        },
      ),
    );
  }
}
