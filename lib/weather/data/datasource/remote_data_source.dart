import 'package:dio/dio.dart';
import 'package:weather/core/utils/constances.dart';
import 'package:weather/weather/data/models/weather_model.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherByCountryName(String countryName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeatherByCountryName(String countryName) async {
    try {
      var response = await Dio().get(
          '${AppConstance.baseUrl}/weather?q=$countryName&appid=${AppConstance.apiKey}');
      // ignore: avoid_print
      print(response);
      return WeatherModel.fromJson(response.data);
    } catch (e) {
      // ignore: avoid_print
      print(e);
      return null;
    }
  }
}
