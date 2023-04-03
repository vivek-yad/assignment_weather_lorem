import 'package:app/app/features/weather/data/model/weather_model/weather_model.dart';

import '../../domain/repo/weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository{
  @override
  Future<List<WeatherModel>> getWeatherList(String country) {
    // TODO: implement getWeatherList
    throw UnimplementedError();
  }
}