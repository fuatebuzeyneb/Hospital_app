import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_app/cubit/button_color_cubit/button_color_cubit.dart';
import 'package:health_app/cubit/cart_cubit/cart_cubit.dart';

import 'package:health_app/models/doctors_model.dart';
import 'package:health_app/widgets/button_widget.dart';
import 'package:health_app/widgets/favorit_icon_widget.dart';
import 'package:health_app/widgets/numbers_icon_widget.dart';
import 'package:health_app/widgets/social_icons_widget.dart';
import 'package:health_app/widgets/text_widget.dart';
import 'package:health_app/widgets/utils/app_images_utlis.dart';

import '../helper/functions/toast_msg.dart';

class CardDetailsWidget extends StatelessWidget {
  const CardDetailsWidget({
    super.key,
  });

  static String id = 'CardDetailsWidget';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final doctorId = ModalRoute.of(context)!.settings.arguments as int;
    int upId = doctorId - 1;
    return BlocBuilder<ButtonColorCubit, ButtonColorState>(
      builder: (context, state) {
        return Scaffold(
          body: SizedBox(
            height: double.maxFinite,
            width: double.maxFinite,
            child: Stack(
              children: [
                Positioned(
                    left: 0,
                    right: 0,
                    child: Container(
                      width: double.maxFinite,
                      height: size.height * 0.65,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              DoctorsModel.doctors[upId].image,
                            ),
                            fit: BoxFit.cover),
                      ),
                    )),
                Positioned(
                  top: size.height * 0.4,
                  child: Container(
                    height: size.height * 1,
                    width: size.width * 1,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 16, right: 16),
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextWidget(
                                text: 'Dr. ${DoctorsModel.doctors[upId].name}',
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    DoctorsModel.doctors[upId].iconClinic,
                                    width: 25,
                                    height: 25,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  TextWidget(
                                    text: DoctorsModel.doctors[upId].clinic,
                                    fontSize: 17,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(Icons.location_on),
                              TextWidget(
                                  text:
                                      'Graduate from: ${DoctorsModel.doctors[upId].graduate}'),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Row(
                            children: [
                              SocialIconsWidget(
                                  image: AppImagesUtils.kWhatsappIcon),
                              SizedBox(
                                width: 15,
                              ),
                              SocialIconsWidget(
                                  image: AppImagesUtils.kInstagramIcon),
                              SizedBox(
                                width: 15,
                              ),
                              SocialIconsWidget(
                                  image: AppImagesUtils.kTwitterIcon),
                              SizedBox(
                                width: 15,
                              ),
                              SocialIconsWidget(
                                  image: AppImagesUtils.kFacebookIcon),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const TextWidget(
                            text: 'Booking',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const TextWidget(
                            text:
                                'Your reservation will be made from today for the number of days you choose',
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              NumbersIconWidget(
                                text: 'mon',
                                color:
                                    BlocProvider.of<ButtonColorCubit>(context)
                                        .button1Color,
                                onTap: () {
                                  BlocProvider.of<ButtonColorCubit>(context)
                                      .button1Pressed();
                                },
                              ),
                              NumbersIconWidget(
                                text: 'Tue',
                                color:
                                    BlocProvider.of<ButtonColorCubit>(context)
                                        .button2Color,
                                onTap: () {
                                  BlocProvider.of<ButtonColorCubit>(context)
                                      .button2Pressed();
                                },
                              ),
                              NumbersIconWidget(
                                text: 'Wed',
                                color:
                                    BlocProvider.of<ButtonColorCubit>(context)
                                        .button3Color,
                                onTap: () {
                                  BlocProvider.of<ButtonColorCubit>(context)
                                      .button3Pressed();
                                },
                              ),
                              NumbersIconWidget(
                                text: 'Thu',
                                color:
                                    BlocProvider.of<ButtonColorCubit>(context)
                                        .button4Color,
                                onTap: () {
                                  BlocProvider.of<ButtonColorCubit>(context)
                                      .button4Pressed();
                                },
                              ),
                              NumbersIconWidget(
                                text: 'Fri',
                                color:
                                    BlocProvider.of<ButtonColorCubit>(context)
                                        .button5Color,
                                onTap: () {
                                  BlocProvider.of<ButtonColorCubit>(context)
                                      .button5Pressed();
                                },
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const TextWidget(
                            text: 'Description',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextWidget(
                            text: DoctorsModel.doctors[upId].description,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const FavoritIconWidget(),
                              ButtonWidget(
                                widget: const Center(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      TextWidget(
                                        text: 'Booking Now',
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      Icon(
                                        Icons.double_arrow,
                                        size: 30,
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  toastMsg(
                                      massage:
                                          "An appointment has been booked");
                                  BlocProvider.of<CartCubit>(context)
                                      .addDoctorToCart(
                                          cartId: DoctorsModel
                                              .doctors[upId].idDoctor,
                                          name: DoctorsModel.doctors[upId].name,
                                          clinic:
                                              DoctorsModel.doctors[upId].clinic,
                                          iconClinic: DoctorsModel
                                              .doctors[upId].iconClinic,
                                          time:
                                              BlocProvider.of<ButtonColorCubit>(
                                                      context)
                                                  .timeDay(),
                                          image:
                                              DoctorsModel.doctors[upId].image);
                                },
                                myHeight: 0.15,
                                myWidth: 0.7,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

//Text(doctors[upId].subTitle)
