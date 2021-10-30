import 'package:flutter/material.dart';

class ColorBar extends StatelessWidget {
  const ColorBar({
    Key? key,
    required this.colour,
    this.width = 8.0,
    this.topRadius = 0,
    this.bottomRadius = 0,
  }) : super(key: key);

  final Color colour;
  final double width;
  final double topRadius;
  final double bottomRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: width,
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(topRadius),
          topRight: Radius.circular(topRadius),
          bottomLeft: Radius.circular(bottomRadius),
          bottomRight: Radius.circular(bottomRadius),
        ),
      ),
    );
  }
}
