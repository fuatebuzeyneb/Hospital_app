import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_app/models/cart_model.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());
  final List<CartModel> cartItems = [];

  // List<CartModel> fatchAll() {
  //   return cartItems;
  // }

  void addDoctorToCart({
    required int cartId,
    required String name,
    required String clinic,
    required String iconClinic,
    required String image,
    required String time,
  }) {
    bool isExisting = cartItems.any((item) => item.cartId == cartId);

    if (!isExisting) {
      cartItems.add(CartModel(
        cartId: cartId,
        name: name,
        clinic: clinic,
        iconClinic: iconClinic,
        image: image,
        time: time,
      ));

      emit(CartAdd());
    }
  }

  void delateDoctorFromCart({
    required int cartId,
  }) {
    cartItems.removeWhere((item) => item.cartId == cartId);
    // fatchAll();
    emit(CartDelete());
  }

  void delateAll() {
    cartItems.clear();
    emit(CartDeleteAll());
  }
}
