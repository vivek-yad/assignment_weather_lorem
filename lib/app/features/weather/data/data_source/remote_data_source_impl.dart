//http://api.openweathermap.org/data/2.5/weather?q=India&APPID=59d36c8c7ce81e6c856e5ac92f8fee85

import 'dart:convert';

import 'package:app/app/features/weather/data/data_source/remote_data_source.dart';
import 'package:app/app/features/weather/data/model/weather_model/weather_model.dart';
import 'package:http/http.dart' as http;

import '../../../../secrate_key.dart';

class WeatherDataSourceImpl implements WeatherDataSource {
  @override
  Future<List<WeatherModel>> getWeatherData(String country) async {
    String apiUrl =
        "http://api.openweathermap.org/data/2.5/weather?q=$country&APPID=${SecrateKey.weatherApiKey}";

    List<WeatherModel> weatherModel = [];
    var result = await http.get(Uri.parse(apiUrl));
    var response = jsonDecode(result.body);
    print("response====$response");
    weatherModel = List<WeatherModel>.from(
        json.decode(result.body).map((x) => WeatherModel.fromJson(x)));
    print(weatherModel);
    return weatherModel;
    // TODO: implement getWeatherData

    throw UnimplementedError();
  }
}
