import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_app/views/sign_in_view.dart';
import 'package:health_app/widgets/button_widget.dart';

import '../cubit/auth_cubit/auth_cubit.dart';
import '../widgets/helper/functions/toast_msg.dart';
import '../widgets/pick_image_widget.dart';
import '../widgets/text_field_widget.dart';
import '../widgets/text_widget.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static String id = 'SignUpView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is SignUpFailure) {
              toastMsg(massage: state.errorMassage);
            } else if (state is SignUpSuccuss) {
              toastMsg(massage: state.massage);
              Navigator.pushReplacementNamed(context, SignInView.id);
            }
          },
          builder: (context, state) {
            AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
            return Form(
              key: authCubit.formKeyForSignUp,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 65,
                    ),
                    const TextWidget(
                      text: 'Create\nAccount',
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                    const PickImageWidget(),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFieldWidget(
                      label: 'Name',
                      onChanged: (value) {
                        authCubit.name = value;
                      },
                    ),
                    TextFieldWidget(
                      label: 'Email',
                      onChanged: (value) {
                        authCubit.mail = value;
                      },
                    ),
                    TextFieldWidget(
                      label: 'Phone',
                      onChanged: (value) {
                        authCubit.phone = value;
                      },
                    ),
                    TextFieldWidget(
                      onChanged: (value) {
                        authCubit.password = value;
                      },
                      label: 'Password',
                    ),
                    TextFieldWidget(
                      onChanged: (value) {
                        authCubit.confirmPassword = value;
                      },
                      label: 'Confirm Password',
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    state is SignUpLoading
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : Center(
                            child: ButtonWidget(
                                widget: const Center(
                                  child: TextWidget(
                                    text: 'Sign Up',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                onTap: () {
                                  authCubit.signUp();
                                },
                                myHeight: 0.12,
                                myWidth: 0.8),
                          ),
                    const SizedBox(
                      height: 10,
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
                      height: 10,
                    ),
                    Center(
                      child: ButtonWidget(
                        widget: const Center(
                          child: TextWidget(
                            text: 'Sign In',
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, SignInView.id);
                        },
                        myHeight: 0.12,
                        myWidth: 0.8,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
