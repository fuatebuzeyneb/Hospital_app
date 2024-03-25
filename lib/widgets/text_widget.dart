import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
      {super.key,
      required this.text,
      this.fontSize = 12,
      this.fontWeight,
      this.color = Colors.black});
  final String text;
  final double fontSize;
  final Color color;

  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
      ),
      maxLines: 5,
      overflow: TextOverflow.clip,
      // textAlign: TextAlign.center,
    );
  }
}
