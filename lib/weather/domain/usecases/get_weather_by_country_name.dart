import 'package:weather/weather/domain/entities/weather.dart';
import 'package:weather/weather/domain/repository/base_weather_repository.dart';

class GetWeatherByCountryName {
  final BaseWeatherRepository baseWeatherRepository;
  GetWeatherByCountryName(this.baseWeatherRepository);
  Future<Weather> excuteGetWeatherByCountryName(String countryName) async {
    return await baseWeatherRepository.getWeatherByCountryName(countryName);
  }
}
