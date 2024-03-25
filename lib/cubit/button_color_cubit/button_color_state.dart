part of 'button_color_cubit.dart';

@immutable
sealed class ButtonColorState {}

final class ButtonColorInitial extends ButtonColorState {}

final class ColorState extends ButtonColorState {}

final class TextState extends ButtonColorState {}

final class HeartState extends ButtonColorState {}
