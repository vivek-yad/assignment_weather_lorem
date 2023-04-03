import '../features/weather/data/data_source/remote_data_source_impl.dart';

class WeatherDi{
  static weatherInit(){
    WeatherDataSourceImpl weatherDataSourceImpl=WeatherDataSourceImpl();
  }
}