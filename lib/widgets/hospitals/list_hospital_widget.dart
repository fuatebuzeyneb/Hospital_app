import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:health_app/models/hospital_model.dart';
import 'package:health_app/widgets/hospitals/card_hospital_details_widget.dart';
import 'package:health_app/widgets/hospitals/card_hospital_home_widget.dart';

import '../../models/doctors_model.dart';

class ListHospitalWidget extends StatelessWidget {
  const ListHospitalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: DoctorsModel.doctors.length,
      itemBuilder: (BuildContext context, int index, int realIndex) {
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, CardHospitalDetailsWidget.id,
                arguments: HospitalModel.hospitals[index].idHospital);
          },
          child: CardHospitalHomeWidget(
            hospitalModel: HospitalModel.hospitals[index],
          ),
        );
      },
      options: CarouselOptions(
        height: 400,
        viewportFraction: 0.53,
        initialPage: 0,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
