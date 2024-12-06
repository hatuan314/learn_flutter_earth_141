import 'package:dio/dio.dart';

class Apis {
  final dio = Dio(
    BaseOptions(
      baseUrl: "https://restcountries.com/v3.1",
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
    ),
  );

  Future<List<dynamic>> getCountriesByRegion(String region) async {
    try {
      final response = await dio.get("/region/$region");
      return response.data as List<dynamic>;
    } on DioException catch (e) {
      if (e.response != null) {
        print(e.response?.data);
        print(e.response?.headers);
        print(e.response?.requestOptions);
      } else {
        print(e.requestOptions);
        print(e.message);
      }
    }
    return [];
  }
}
