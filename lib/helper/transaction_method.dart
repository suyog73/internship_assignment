import 'package:flutter/material.dart';

class TransactionMethod extends StatelessWidget {
  const TransactionMethod({
    Key? key,
    required this.value,
    required this.method,
  }) : super(key: key);

  final String value;
  final String method;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          method,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 18,
            fontWeight: FontWeight.w100,
          ),
        ),
      ],
    );
  }
}
