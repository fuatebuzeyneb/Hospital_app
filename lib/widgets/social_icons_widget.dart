import 'package:flutter/material.dart';

class SocialIconsWidget extends StatelessWidget {
  const SocialIconsWidget({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
          image: AssetImage(image),
        ),
      ),
    );
  }
}
