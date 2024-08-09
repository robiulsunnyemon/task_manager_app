import 'package:flutter/material.dart';

class CustomRowButton extends StatelessWidget {
  final Function() ontap;
  final String first_text;
  final String text_button;
  const CustomRowButton({super.key, required this.ontap, required this.first_text, required this.text_button});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          first_text,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
        ),
        TextButton(
          onPressed: ontap,
          child: Text(
            text_button,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Colors.green,
            ),
          ),
        ),
      ],
    );
  }
}
