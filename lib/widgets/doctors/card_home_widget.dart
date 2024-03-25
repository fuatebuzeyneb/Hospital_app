import 'package:flutter/material.dart';
import 'package:health_app/models/doctors_model.dart';
import 'package:health_app/widgets/text_widget.dart';

class CardHomeWidget extends StatelessWidget {
  const CardHomeWidget({
    super.key,
    required this.doctorsModel,
  });
  final DoctorsModel doctorsModel;
  static String id = 'CardHomeWidget';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 0),
      child: Stack(
        children: [
          Container(
            height: size.height * 0.41,
            width: size.width * 0.48,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(45)),
              image: DecorationImage(
                image: AssetImage(doctorsModel.image),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            left: 10,
            bottom: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  text: 'Dr. ${doctorsModel.name}',
                ),
                Row(
                  children: [
                    Image.asset(
                      doctorsModel.iconClinic,
                      height: 20,
                      width: 20,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    TextWidget(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      text: doctorsModel.clinic,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
