import 'package:flutter/material.dart';
import 'package:health_app/models/hospital_model.dart';
import 'package:health_app/widgets/text_widget.dart';

class CardHospitalHomeWidget extends StatelessWidget {
  const CardHospitalHomeWidget({super.key, required this.hospitalModel});
  final HospitalModel hospitalModel;
  static String id = 'CardHospitalHomeWidget';
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
                image: AssetImage(hospitalModel.image),
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
                  text: hospitalModel.name,
                  color: Colors.white,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      size: 20,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    TextWidget(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      text: hospitalModel.location,
                      color: Colors.white,
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
