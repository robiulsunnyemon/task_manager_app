import 'dart:ffi';

import 'package:flutter/material.dart';

class middle_text extends StatelessWidget {
  final String text;
  final int? font_size;
  const middle_text({super.key, required this.text, this.font_size=15});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.grey,
        fontSize: font_size!.toDouble(),
        fontWeight:FontWeight.w500,
      ),
    );
  }
}
