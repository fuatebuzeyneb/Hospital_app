import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_app/cubit/button_color_cubit/button_color_cubit.dart';
import 'package:health_app/widgets/utils/app_images_utlis.dart';

class FavoritIconWidget extends StatelessWidget {
  const FavoritIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ButtonColorCubit, ButtonColorState>(
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              border: Border.all()),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: GestureDetector(
              onTap: () {
                BlocProvider.of<ButtonColorCubit>(context).HeartButton();
              },
              child: Image.asset(
                BlocProvider.of<ButtonColorCubit>(context).favorite == false
                    ? AppImagesUtils.kFavoriteIcon
                    : AppImagesUtils.kHeartIcon,
                height: 28,
                width: 28,
              ),
            ),
          ),
        );
      },
    );
  }
}
