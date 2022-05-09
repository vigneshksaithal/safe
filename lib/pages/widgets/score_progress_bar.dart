import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ProgressBar extends StatelessWidget {
  final double percentage;
  const ProgressBar({Key? key, required this.percentage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      alignment: MainAxisAlignment.center,
      width: 340,
      lineHeight: 26.0,
      percent: percentage,
      progressColor: Colors.green,
      backgroundColor: Colors.grey[300],
      linearStrokeCap: LinearStrokeCap.roundAll,
      animation: true,
      animationDuration: 1000,
    );
  }
}
