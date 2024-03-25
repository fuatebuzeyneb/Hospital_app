import 'package:flutter/material.dart';
import 'package:health_app/widgets/text_widget.dart';

class NumbersIconWidget extends StatelessWidget {
  const NumbersIconWidget(
      {super.key, required this.text, this.onTap, required this.color});
  final String text;
  final Function()? onTap;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 5),
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: color,
          ),
          child: Center(
            child: TextWidget(
              text: text,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
