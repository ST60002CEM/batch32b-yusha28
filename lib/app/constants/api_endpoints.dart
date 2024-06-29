class ApiEndpoints {
  ApiEndpoints._();

  static const Duration connectionTimeout = Duration(seconds: 1000);
  static const Duration receiveTimeout = Duration(seconds: 1000);
  static const String baseUrl = "http://10.0.2.2:4000/api/v1/";

  static const String login = "user/login";
  static const String register = "user/register";
  static const String imageUrl = "http://10.0.2.2:4000/uploads/";
  static const String uploadImage = "auth/uploadImage";
  static const String listings = "/getall";

  static const limitPage = 2;
}
