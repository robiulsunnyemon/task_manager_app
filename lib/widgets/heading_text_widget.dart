import 'package:flutter/material.dart';

class HeadingTextWidget extends StatelessWidget {
  final String heading;
  const HeadingTextWidget({super.key, required this.heading});

  @override
  Widget build(BuildContext context) {
    return Text(
      heading,
      style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold
      ),
    );
  }
}
