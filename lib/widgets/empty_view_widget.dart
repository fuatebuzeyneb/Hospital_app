import 'package:flutter/material.dart';
import 'package:health_app/widgets/text_widget.dart';
import 'package:health_app/widgets/utils/app_images_utlis.dart';

class EmptyViewWidget extends StatelessWidget {
  const EmptyViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Image.asset(
            AppImagesUtils.kWelcomeImageOne,
            height: size.height * 0.5,
            width: size.width * 1,
          ),
          const TextWidget(
            text: 'No any Applay',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          const TextWidget(
              text: 'fdjd dfkjsdkf isdhfkjsdf  ksdkhfjskdf fjshfuisbf  idhfsu'),
        ],
      ),
    );
  }
}
