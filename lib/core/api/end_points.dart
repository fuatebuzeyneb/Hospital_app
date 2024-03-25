class EndPoints {
  static String baseUrl = "https://food-api-omega.vercel.app/api/v1/";
  static String signIn = "user/signin";
  static String signUp = "user/signup";
  static String delete = "user/delete";
  static String getUserDataEndPoint(id) {
    return "user/get-user/$id";
  }
}

class ApiKey {
  static String status = 'status';
  static String errorMessage = 'ErrorMessage';
  static String email = 'email';
  static String password = 'password';
  static String token = 'token';
  static String id = 'id';
  static String message = 'message';
  static String profilePic = 'profilePic';
  static String name = 'name';
  static String phone = 'phone';
  static String location = 'location';
  static String confirmPassword = 'confirmPassword';
}
