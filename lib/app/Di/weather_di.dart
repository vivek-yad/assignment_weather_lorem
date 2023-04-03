import 'package:app/app/features/weather/data/repo_impl/weather_repository_impl.dart';
import 'package:get/get.dart';

import '../features/drawer/drwawer_controler/controller.dart';
import '../features/weather/data/data_source/remote_data_source_impl.dart';
import '../features/weather/domain/use_case/weather_use_case_impl.dart';
import '../features/weather/prsentaion/getx_controller/weather_controller.dart';

class WeatherDi{
  static weatherInit(){
    WeatherDataSourceImpl weatherDataSourceImpl=WeatherDataSourceImpl();
    var weatherDataRepo=WeatherRepositoryImpl(weatherDataSourceImpl);
    Get.put(WeatherUseCaseImpl(weatherDataRepo));
    Get.put(WeatherController());

  }
}