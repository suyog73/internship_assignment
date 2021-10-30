import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ColumnContent extends StatelessWidget {
  const ColumnContent({
    Key? key,
    required this.text1,
    this.text2 = '',
    required this.text3,
    this.colour1 = Colors.white,
    this.colour2 = Colors.white,
    this.colour3,
  }) : super(key: key);

  final String text1;
  final String text2;
  final String text3;

  final Color colour1;
  final Color colour2;
  final Color? colour3;

  Color getColor3(text3) {
    if (colour3 != Colors.white) {
      if (text3 == 'SELL') {
        return Colors.red;
      } else if (text3 == 'BUY') {
        return Colors.blue;
      } else if (text3 == 'NEUTRAL') {
        return const Color(0xFFFFB946);
      }
      return Colors.grey;
    }
    return Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.26,
            child: Text(
              text1,
              style: TextStyle(color: colour1, fontSize: 19),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.26,
            child: Text(
              text2,
              style: TextStyle(color: colour2, fontSize: 19),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.26,
            child: Text(
              text3,
              style: TextStyle(color: getColor3(text3), fontSize: 19),
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}
