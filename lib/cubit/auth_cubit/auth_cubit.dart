import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:health_app/core/api/api_consumer.dart';
import 'package:health_app/core/api/end_points.dart';
import 'package:health_app/core/errors/exceptions.dart';
import 'package:health_app/models/signup_model.dart';
import 'package:health_app/models/user_model.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import '../../models/signin_model.dart';
import '../../widgets/helper/cache_helper.dart';
import '../../widgets/helper/functions/upload_image_to_api.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.api) : super(AuthInitial());

  final ApiConsumer api;
  SignInModel? user;
  bool obscurePassword = false;
  GlobalKey<FormState> formKeyForSignUp = GlobalKey();
  GlobalKey<FormState> formKeyForSignIn = GlobalKey();
  String? mail;
  String? password;
  String? name;
  String? confirmPassword;
  String? phone;

  XFile? profilePic;

  uploadProfilePic(XFile image) {
    profilePic = image;
    emit(UploadProfilePic());
  }

  void obscurePasswordText() {
    if (obscurePassword == true) {
      obscurePassword = false;
    } else {
      obscurePassword = true;
    }
    emit(ObscurePasswordTextUpdateState());
  }

  signIn() async {
    try {
      emit(SignInLoading());
      final response = await api.post(
        EndPoints.signIn,
        data: {
          ApiKey.email: mail,
          ApiKey.password: password,
        },
      );
      user = SignInModel.fromJson(response);
      final decodedToken = JwtDecoder.decode(user!.token);
      CacheHelper().saveData(key: ApiKey.token, value: user!.token);
      CacheHelper().saveData(key: ApiKey.id, value: decodedToken[ApiKey.id]);
      emit(SignInSuccuss());
    } on ServerException catch (e) {
      emit(SignInFailure(errorMassage: e.errorModel.errorMessage));
    }
  }

  signUp() async {
    try {
      emit(SignUpLoading());
      final response = await api.post(
        EndPoints.signUp,
        isFormData: true,
        data: {
          ApiKey.name: name,
          ApiKey.email: mail,
          ApiKey.phone: phone,
          ApiKey.password: password,
          ApiKey.confirmPassword: confirmPassword,
          ApiKey.location:
              '{"name":"methalfa","address":"meet halfa","coordinates":[30.1572709,31.224779]}',
          ApiKey.profilePic: await uploadImageToAPI(profilePic!),
        },
      );
      final signUpModel = SignUpModel.fromJson(response);
      emit(SignUpSuccuss(massage: signUpModel.message));
    } on ServerException catch (e) {
      emit(SignUpFailure(errorMassage: e.errorModel.errorMessage));
      // TODO
    }
  }

  getUserProfile() async {
    try {
      emit(GetUserLoading());
      final response = await api.get(
        EndPoints.getUserDataEndPoint(
          CacheHelper().getData(key: ApiKey.id),
        ),
      );
      emit(GetUserSuccuss(user: UserModel.fromJson(response)));
    } on ServerException catch (e) {
      emit(GetUserFailure(errorMassage: e.errorModel.errorMessage));
    }
  }

  deleteUserProfile() async {
    emit(SignUpLoading());
    await api.delete(
      EndPoints.delete,
      queryParameters: {
        ApiKey.id: CacheHelper().getData(key: ApiKey.id),
      },
    );
    emit(DeleteUser());
  }

  //  update() async {
  //   try {
  //   //  emit(SignUpLoading());
  //     final response = await api.patch(
  //       EndPoints.signUp,
  //       isFormData: true,
  //       data: {
  //         ApiKey.name: name,
  //         ApiKey.phone: phone,
  //         ApiKey.location:
  //             '{"name":"methalfa","address":"meet halfa","coordinates":[30.1572709,31.224779]}',
  //         ApiKey.profilePic: await uploadImageToAPI(profilePic!),
  //       },
  //     );
  //     final signUpModel = SignUpModel.fromJson(response);
  //     emit(SignUpSuccuss(massage: signUpModel.message));
  //   } on ServerException catch (e) {
  //     emit(SignUpFailure(errorMassage: e.errorModel.errorMessage));
  //     // TODO
  //   }
  // }
}
