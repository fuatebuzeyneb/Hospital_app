import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:health_app/widgets/utils/app_colors_utils.dart';

part 'button_color_state.dart';

class ButtonColorCubit extends Cubit<ButtonColorState> {
  ButtonColorCubit() : super(ColorState());

  bool favorite = false;
  String dayText = '000000';
  Color button1Color = AppColors.kSecondColor;
  Color button2Color = AppColors.kSecondColor;
  Color button3Color = AppColors.kSecondColor;
  Color button4Color = AppColors.kSecondColor;
  Color button5Color = AppColors.kSecondColor;

  void button1Pressed() {
    if (button1Color == AppColors.kSecondColor) {
      button1Color = AppColors.kMainColor;
      button2Color = AppColors.kSecondColor;
      button3Color = AppColors.kSecondColor;
      button4Color = AppColors.kSecondColor;
      button5Color = AppColors.kSecondColor;
    } else {
      button1Color = AppColors.kSecondColor;
      button2Color = AppColors.kSecondColor;
      button3Color = AppColors.kSecondColor;
      button4Color = AppColors.kSecondColor;
      button5Color = AppColors.kSecondColor;
    }

    emit(ColorState());
  }

  void button2Pressed() {
    if (button2Color == AppColors.kSecondColor) {
      button1Color = AppColors.kSecondColor;
      button2Color = AppColors.kMainColor;
      button3Color = AppColors.kSecondColor;
      button4Color = AppColors.kSecondColor;
      button5Color = AppColors.kSecondColor;
    } else {
      button1Color = AppColors.kSecondColor;
      button2Color = AppColors.kSecondColor;
      button3Color = AppColors.kSecondColor;
      button4Color = AppColors.kSecondColor;
      button5Color = AppColors.kSecondColor;
    }

    emit(ColorState());
  }

  void button3Pressed() {
    if (button3Color == AppColors.kSecondColor) {
      button1Color = AppColors.kSecondColor;
      button2Color = AppColors.kSecondColor;
      button3Color = AppColors.kMainColor;
      button4Color = AppColors.kSecondColor;
      button5Color = AppColors.kSecondColor;
    } else {
      button1Color = AppColors.kSecondColor;
      button2Color = AppColors.kSecondColor;
      button3Color = AppColors.kSecondColor;
      button4Color = AppColors.kSecondColor;
      button5Color = AppColors.kSecondColor;
    }

    emit(ColorState());
  }

  void button4Pressed() {
    if (button4Color == AppColors.kSecondColor) {
      button1Color = AppColors.kSecondColor;
      button2Color = AppColors.kSecondColor;
      button3Color = AppColors.kSecondColor;
      button4Color = AppColors.kMainColor;
      button5Color = AppColors.kSecondColor;
    } else {
      button1Color = AppColors.kSecondColor;
      button2Color = AppColors.kSecondColor;
      button3Color = AppColors.kSecondColor;
      button4Color = AppColors.kSecondColor;
      button5Color = AppColors.kSecondColor;
    }

    emit(ColorState());
  }

  void button5Pressed() {
    if (button5Color == AppColors.kSecondColor) {
      button1Color = AppColors.kSecondColor;
      button2Color = AppColors.kSecondColor;
      button3Color = AppColors.kSecondColor;
      button4Color = AppColors.kSecondColor;
      button5Color = AppColors.kMainColor;
    } else {
      button1Color = AppColors.kSecondColor;
      button2Color = AppColors.kSecondColor;
      button3Color = AppColors.kSecondColor;
      button4Color = AppColors.kSecondColor;
      button5Color = AppColors.kSecondColor;
    }

    emit(ColorState());
  }

  String timeDay() {
    if (button1Color == AppColors.kMainColor) {
      dayText = 'Monday';
    } else if (button2Color == AppColors.kMainColor) {
      dayText = 'Tuesday';
    } else if (button3Color == AppColors.kMainColor) {
      dayText = 'Wednesday';
    } else if (button4Color == AppColors.kMainColor) {
      dayText = 'Thursday';
    } else if (button5Color == AppColors.kMainColor) {
      dayText = 'Friday';
    } else {
      dayText = 'No Day';
    }
    emit(TextState());
    return dayText;
  }

  void HeartButton() {
    if (favorite == false) {
      favorite = true;
    } else {
      favorite = false;
    }
    emit(HeartState());
  }
}
