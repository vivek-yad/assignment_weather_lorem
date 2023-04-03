import '../../data/model/weather_model/weather_model.dart';

abstract class WeatherRepository {
  Future<List<WeatherModel>> getWeatherList(String country);
}