import 'package:flutter/material.dart';
import 'package:health_app/models/clinics_model.dart';
import 'package:health_app/widgets/text_widget.dart';
import 'package:health_app/widgets/utils/app_colors_utils.dart';

class IconHomeWidget extends StatelessWidget {
  const IconHomeWidget({
    super.key,
    required this.clinicsModel,
  });

  final ClinicsModel clinicsModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: AppColors.kSecondColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Image.asset(
                clinicsModel.icon,
                height: 35,
                width: 35,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          TextWidget(
            text: clinicsModel.title,
            fontSize: 14,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
