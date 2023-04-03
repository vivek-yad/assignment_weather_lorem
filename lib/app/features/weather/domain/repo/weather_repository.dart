import '../../data/model/weather_model/weather_model.dart';

abstract class WeatherRepository {
  Future<WeatherModel> getWeatherList(String country);
}