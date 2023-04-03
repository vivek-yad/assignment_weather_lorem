import 'package:app/app/features/weather/data/model/weather_model/weather_model.dart';
import 'package:app/app/features/weather/data/repo_impl/weather_repository_impl.dart';
import 'package:app/app/features/weather/domain/use_case/weather_use_case.dart';

class WeatherUseCaseImpl implements WeatherUseCase{
  WeatherRepositoryImpl weatherDataRepo;
  WeatherUseCaseImpl(this.weatherDataRepo);

  @override
  Future<WeatherModel> getWeatherRepo(String country) async {
    return  weatherDataRepo.getWeatherList(country);
    // TODO: implement getWeatherRepo
    throw UnimplementedError();
  }
}