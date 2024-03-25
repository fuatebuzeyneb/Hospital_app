import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_app/cubit/auth_cubit/auth_cubit.dart';
import 'package:health_app/views/sign_up_view.dart';
import 'package:health_app/widgets/button_widget.dart';
import 'package:health_app/widgets/list_title_widget.dart';

import '../../widgets/helper/functions/toast_msg.dart';
import '../../widgets/text_widget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({
    super.key,
  });
  static String id = 'ProfileView';

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is GetUserFailure) {
          toastMsg(massage: state.errorMassage);
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: state is GetUserLoading
              ? const Center(child: CircularProgressIndicator())
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SingleChildScrollView(
                    child: state is GetUserSuccuss
                        ? Column(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 50,
                              ),
                              const Row(
                                children: [
                                  TextWidget(
                                    text: 'What\'s up Today',
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.transparent,
                                radius: 80,
                                backgroundImage:
                                    NetworkImage(state.user.profilePic),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              ListTitleWidget(
                                icon: Icons.person,
                                text: state.user.name,
                                widget: const Icon(
                                  Icons.edit,
                                  color: Colors.black,
                                ),
                              ),
                              ListTitleWidget(
                                icon: Icons.mail,
                                text: state.user.email,
                                widget: const Icon(
                                  Icons.edit,
                                  color: Colors.black,
                                ),
                              ),
                              ListTitleWidget(
                                icon: Icons.phone,
                                text: state.user.phone,
                                widget: const Icon(
                                  Icons.edit,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              ButtonWidget(
                                  widget: const Center(
                                      child: Text('Delete Account')),
                                  onTap: () {
                                    BlocProvider.of<AuthCubit>(context)
                                        .deleteUserProfile();
                                    Navigator.pushReplacementNamed(
                                        context, SignUpView.id);
                                  },
                                  myHeight: 0.12,
                                  myWidth: 0.8),
                            ],
                          )
                        : Container(),
                  ),
                ),
        );
      },
    );
  }
}
