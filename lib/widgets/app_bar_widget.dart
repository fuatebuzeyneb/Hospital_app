import 'package:flutter/material.dart';
import 'package:health_app/widgets/text_widget.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
    required this.imageOrIcon,
    required this.title,
  });
  final Widget imageOrIcon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      actions: [imageOrIcon],
      title: TextWidget(
        text: title,
        fontSize: 20,
      ),
    );
  }
}
