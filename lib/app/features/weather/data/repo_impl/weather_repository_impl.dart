import 'package:app/app/features/weather/data/data_source/remote_data_source_impl.dart';
import 'package:app/app/features/weather/data/model/weather_model/weather_model.dart';

import '../../domain/repo/weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository{
  WeatherDataSourceImpl weatherDataSourceImpl;
  WeatherRepositoryImpl( this.weatherDataSourceImpl);

  @override
  Future<WeatherModel> getWeatherList(String country) async {
    return  weatherDataSourceImpl.getWeatherData(country);
    // TODO: implement getWeatherList
    throw UnimplementedError();
  }
}