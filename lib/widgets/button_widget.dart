import 'package:flutter/material.dart';
import 'package:health_app/widgets/utils/app_colors_utils.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.widget,
    required this.onTap,
    required this.myHeight,
    required this.myWidth,
  });
  final Widget widget;
  final double myHeight;
  final double myWidth;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: size.width * myHeight,
          width: size.width * myWidth,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [AppColors.kMainColor, AppColors.kSecondColor],
                begin: FractionalOffset.topRight,
                end: FractionalOffset.bottomLeft,
                tileMode: TileMode.repeated),
            borderRadius: BorderRadius.circular(8),
          ),
          child: widget),
    );
  }
}
