import '../model/weather_model/weather_model.dart';

abstract class WeatherDataSource {
  Future<WeatherModel> getWeatherData(String country);
}