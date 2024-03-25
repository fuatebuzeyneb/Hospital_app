import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_app/cubit/cart_cubit/cart_cubit.dart';
import 'package:health_app/models/cart_model.dart';
import 'package:health_app/widgets/text_widget.dart';
import 'package:health_app/widgets/utils/app_colors_utils.dart';

class DoctorCartEndWidget extends StatelessWidget {
  const DoctorCartEndWidget({super.key, required this.cartModel});
  static String id = 'DoctorCartWidget';
  final CartModel cartModel;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.delete),
                    iconSize: 25,
                    onPressed: () {
                      BlocProvider.of<CartCubit>(context)
                          .delateDoctorFromCart(cartId: cartModel.cartId);
                    },
                  ),
                  Container(
                    height: 120,
                    width: size.width * 0.7,
                    decoration: BoxDecoration(
                      color: AppColors.kSecondColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(
                          25,
                        ),
                        bottomLeft: Radius.circular(25),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                            text: 'Dr. ${cartModel.name}',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                cartModel.iconClinic,
                                height: 25,
                                width: 25,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              TextWidget(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                text: cartModel.clinic,
                              ),
                            ],
                          ),
                          TextWidget(
                            text: cartModel.time,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 10,
                left: 75,
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(
                    cartModel.image,
                  ),
                  radius: 50.0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
