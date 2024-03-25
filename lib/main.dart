import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_app/core/api/dio_consumer.dart';
import 'package:health_app/cubit/auth_cubit/auth_cubit.dart';
import 'package:health_app/cubit/button_color_cubit/button_color_cubit.dart';

import 'package:health_app/views/bottom_nav_bar_views/profile_view.dart';
import 'package:health_app/views/bottom_nav_bar_views/bottom_nav_bar.dart';
import 'package:health_app/views/bottom_nav_bar_views/doctors_cart_view.dart';
import 'package:health_app/views/bottom_nav_bar_views/home_view.dart';
import 'package:health_app/views/bottom_nav_bar_views/hospital_cart_view.dart';
import 'package:health_app/views/sign_in_view.dart';
import 'package:health_app/views/sign_up_view.dart';
import 'package:health_app/views/welcome_view.dart';
import 'package:health_app/widgets/helper/cache_helper.dart';
import 'package:health_app/widgets/hospitals/card_hospital_details_widget.dart';

import 'cubit/cart_cubit/cart_cubit.dart';
import 'widgets/doctors/card_details_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  CacheHelper().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthCubit(DioConsumer(dio: Dio())),
        ),
        BlocProvider(
          create: (context) => ButtonColorCubit(),
        ),
        BlocProvider(
          create: (context) => CartCubit()..cartItems,
        ),
      ],
      child: MaterialApp(
        //debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        routes: {
          WelcomeView.id: (context) => const WelcomeView(),
          HomeView.id: (context) => const HomeView(),
          BottomNavBar.id: (context) => const BottomNavBar(),
          DoctorsCartView.id: (context) => const DoctorsCartView(),
          HospitalCartView.id: (context) => const HospitalCartView(),
          ProfileView.id: (context) => const ProfileView(),
          SignInView.id: (context) => const SignInView(),
          SignUpView.id: (context) => const SignUpView(),
          CardDetailsWidget.id: (context) => const CardDetailsWidget(),
          CardHospitalDetailsWidget.id: (context) =>
              const CardHospitalDetailsWidget(),
          // DoctorCartWidget.id: (context) => const DoctorCartWidget(),
        },

        initialRoute: WelcomeView.id,
      ),
    );
  }
}
