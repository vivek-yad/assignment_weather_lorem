import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/model/weather_model/weather_model.dart';
import '../../domain/use_case/weather_use_case_impl.dart';

class WeatherController extends GetxController {
  final _weatherUserCase = Get.find<WeatherUseCaseImpl>();
  final weatherList = WeatherModel().obs;
  var countryData = TextEditingController(text: "London,uk");

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getWeatherList(countryData.value.text.trim());
  }

  getWeatherList(String country) async {
    weatherList.value = await _weatherUserCase.getWeatherRepo(country);
    //weatherList.value=data ;
    print(weatherList.value);
    // data.then((value) => weatherList.value.addAll(value));
    weatherList.value;
    update();
  }
}
