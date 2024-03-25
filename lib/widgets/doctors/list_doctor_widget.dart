import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:health_app/models/doctors_model.dart';
import 'package:health_app/widgets/doctors/card_details_widget.dart';
import 'package:health_app/widgets/doctors/card_home_widget.dart';

class ListDoctorWidget extends StatelessWidget {
  const ListDoctorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: DoctorsModel.doctors.length,
      itemBuilder: (BuildContext context, int index, int realIndex) {
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, CardDetailsWidget.id,
                arguments: DoctorsModel.doctors[index].idDoctor);
          },
          child: CardHomeWidget(
            doctorsModel: DoctorsModel.doctors[index],
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
