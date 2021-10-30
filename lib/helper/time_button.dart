import 'dart:ui';

import 'package:flutter/material.dart';

class TimeButton extends StatelessWidget {
  const TimeButton({
    Key? key,
    required this.time,
    this.colour = Colors.grey,
    this.weight = FontWeight.w100,
    this.textColour = Colors.grey,
  }) : super(key: key);

  final String time;
  final Color colour;
  final FontWeight weight;
  final Color textColour;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: InkWell(
        child: Container(
          alignment: Alignment.center,
          width: 65,
          height: 41,
          decoration: BoxDecoration(
            border: Border.all(
              color: colour,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          ),
          child: Text(
            time,
            style: TextStyle(
              color: textColour,
              fontFamily: 'IBM Plex Sans',
              fontWeight: weight,
            ),
          ),
        ),
      ),
    );
  }
}
