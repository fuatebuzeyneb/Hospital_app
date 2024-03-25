import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../cubit/auth_cubit/auth_cubit.dart';

class PickImageWidget extends StatelessWidget {
  const PickImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Center(
          child: SizedBox(
            height: 130,
            width: 130,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: authCubit.profilePic == null
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(color: Colors.yellow),
                            ),
                          ),
                        )
                      : ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.file(
                            File(authCubit.profilePic!.path),
                            fit: BoxFit.fill,
                            width: 130,
                            height: 130,
                          ),
                        ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Material(
                    borderRadius: BorderRadius.circular(16.0),
                    color: Colors.yellow,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(16.0),
                      onTap: () {
                        ImagePicker()
                            .pickImage(source: ImageSource.gallery)
                            .then(
                                (value) => authCubit.uploadProfilePic(value!));
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.camera_alt,
                            size: 20, color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ), //CircleAvatar
          ),
        );
      },
    );
  }
}
