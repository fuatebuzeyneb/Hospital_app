import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_app/widgets/app_bar_widget.dart';

import 'package:health_app/widgets/doctors/doctor_cart_end_widget.dart';
import 'package:health_app/widgets/doctors/doctor_cart_start_widget.dart';

import '../../cubit/cart_cubit/cart_cubit.dart';
import '../../widgets/empty_view_widget.dart';

class DoctorsCartView extends StatelessWidget {
  const DoctorsCartView({super.key});

  static String id = 'DoctorsCartView';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(55),
            child: AppBarWidget(
              title: 'My reservations',
              imageOrIcon: BlocProvider.of<CartCubit>(context).cartItems.isEmpty
                  ? Container()
                  : Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: IconButton(
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.black,
                          size: 30,
                        ),
                        onPressed: () {
                          BlocProvider.of<CartCubit>(context).delateAll();
                        },
                      ),
                    ),
            ),
          ),
          body: BlocProvider.of<CartCubit>(context).cartItems.isEmpty
              ? const EmptyViewWidget()
              : ListView.builder(
                  itemCount:
                      BlocProvider.of<CartCubit>(context).cartItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    return index % 2 == 0
                        ? DoctorCartEndWidget(
                            cartModel: BlocProvider.of<CartCubit>(context)
                                .cartItems[index])
                        : DoctorCartStartWidget(
                            cartModel: BlocProvider.of<CartCubit>(context)
                                .cartItems[index],
                          );
                  },
                ),
        );
      },
    );
  }
}
