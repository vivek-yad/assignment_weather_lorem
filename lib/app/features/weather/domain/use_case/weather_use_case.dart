import '../../data/model/weather_model/weather_model.dart';

abstract class WeatherUseCase {
  Future<List<WeatherModel>> getWeatherRepo();
}