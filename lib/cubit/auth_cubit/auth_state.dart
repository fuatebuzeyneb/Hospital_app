part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class SignInSuccuss extends AuthState {}

final class SignInLoading extends AuthState {}

final class SignInFailure extends AuthState {
  final String errorMassage;

  SignInFailure({required this.errorMassage});
}

final class SignUpSuccuss extends AuthState {
  final String massage;

  SignUpSuccuss({required this.massage});
}

final class SignUpLoading extends AuthState {}

final class SignUpFailure extends AuthState {
  final String errorMassage;

  SignUpFailure({required this.errorMassage});
}

final class GetUserSuccuss extends AuthState {
  final UserModel user;

  GetUserSuccuss({required this.user});
}

final class GetUserLoading extends AuthState {}

final class GetUserFailure extends AuthState {
  final String errorMassage;

  GetUserFailure({required this.errorMassage});
}

final class DeleteUser extends AuthState {}

final class ObscurePasswordTextUpdateState extends AuthState {}

final class UploadProfilePic extends AuthState {}
