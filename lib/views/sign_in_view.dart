import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:health_app/views/bottom_nav_bar_views/bottom_nav_bar.dart';
import 'package:health_app/views/sign_up_view.dart';
import 'package:health_app/widgets/utils/app_colors_utils.dart';

import '../cubit/auth_cubit/auth_cubit.dart';
import '../widgets/button_widget.dart';
import '../widgets/helper/functions/toast_msg.dart';
import '../widgets/text_field_widget.dart';
import '../widgets/text_widget.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});
  static String id = 'SignInView';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is SignInFailure) {
            toastMsg(massage: state.errorMassage);
          } else if (state is SignInSuccuss) {
            toastMsg(massage: 'success');
            BlocProvider.of<AuthCubit>(context).getUserProfile();
            Navigator.pushReplacementNamed(context, BottomNavBar.id);
          }
        },
        builder: (context, state) {
          AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
          return Stack(
            children: [
              ClipPath(
                clipper: WaveClipperTwo(),
                child: Container(
                  height: size.height * 0.415,
                  color: Colors.black12,
                ),
              ),
              Positioned(
                child: ClipPath(
                  clipper: WaveClipperTwo(),
                  child: Container(
                    height: size.height * 0.4,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            AppColors.kMainColor,
                            AppColors.kSecondColor
                          ],
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter,
                          tileMode: TileMode.repeated),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        TextWidget(
                          text: 'Welcome\nBack',
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Form(
                  key: authCubit.formKeyForSignIn,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: size.height * 0.48,
                        ),
                        TextFieldWidget(
                          label: 'Email',
                          onChanged: (value) {
                            authCubit.mail = value;
                          },
                        ),
                        TextFieldWidget(
                          onChanged: (value) {
                            authCubit.password = value;
                          },
                          label: 'Password',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextWidget(
                              text: 'Forget Password?',
                              color: AppColors.kMainColor,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        state is SignInLoading
                            ? const Center(
                                child: CircularProgressIndicator(),
                              )
                            : Center(
                                child: ButtonWidget(
                                  widget: const Center(
                                    child: TextWidget(
                                      text: 'Sign In',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  onTap: () {
                                    authCubit.signIn();
                                  },
                                  myHeight: 0.12,
                                  myWidth: 0.8,
                                ),
                              ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 1,
                                color: Colors.grey.withOpacity(0.5),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 0,
                                horizontal: 10,
                              ),
                              child: TextWidget(
                                text: 'OR',
                                color: Colors.black45,
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                thickness: 1,
                                color: Colors.grey.withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: ButtonWidget(
                            widget: const Center(
                              child: TextWidget(
                                text: 'Sign Up',
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            onTap: () {
                              Navigator.pushReplacementNamed(
                                  context, SignUpView.id);
                            },
                            myHeight: 0.12,
                            myWidth: 0.8,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
