import '../model/weather_model/weather_model.dart';

abstract class WeatherDataSource {
  Future<List<WeatherModel>> getWeatherData(String country);
}