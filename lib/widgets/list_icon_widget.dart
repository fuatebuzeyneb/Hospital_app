import 'package:flutter/material.dart';
import 'package:health_app/models/clinics_model.dart';
import 'package:health_app/widgets/icon_home_widget.dart';

class ListIconWidget extends StatelessWidget {
  const ListIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: clinics.length,
      itemBuilder: (BuildContext context, int index) {
        return IconHomeWidget(
          clinicsModel: clinics[index],
        );
      },
    );
  }
}
