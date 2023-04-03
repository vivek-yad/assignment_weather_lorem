// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/app_diemen.dart';
import '../../../../core/network_string.dart';
import '../getx_controller/weather_controller.dart';

class WeatherPage extends StatelessWidget {
  WeatherPage({Key? key}) : super(key: key);
  WeatherController detailController = Get.find<WeatherController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WeatherController>(builder: (cont) {
      return Scaffold(
        body: Center(
          child: Column(
            children: [
              TextField(
                controller: detailController.countryData,
                decoration: InputDecoration(
                  hintText: "Enter your country",
                  icon: GestureDetector(
                    onTap: () {
                      detailController.getWeatherList(
                          detailController.countryData.value.text);
                      detailController.update();
                    },
                    child: const Icon(Icons.search),
                  ),
                ),
                onSubmitted: (value) {
                  detailController.getWeatherList(value.trim());
                },
              ),
              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: AppDimen.unitHeight * 4,
                    ),
                    Image.network(NetworkString.imageUrl),
                    SizedBox(
                      height: AppDimen.unitHeight * 4,
                    ),
                    Container(
                      height: AppDimen.height * 0.02,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemBuilder: (contxt, index) {
                          var data = detailController
                              .weatherList.value.weather![index];
                          return Row(
                            children: [
                              Text("Main:${data.main}"),
                              SizedBox(
                                width: AppDimen.unitHeight * 4,
                              ),
                              Text("Description: ${data.description}"),
                            ],
                          );
                        },
                        itemCount:
                            detailController.weatherList.value.weather?.length,
                      ),
                    ),
                    SizedBox(
                      height: AppDimen.unitHeight * 4,
                    ),
                    Text(
                        "Wind: ${detailController.weatherList.value.wind?.speed.toString() ?? ''} speed, ${detailController.weatherList.value.wind?.deg.toString() ?? ''}deg "),
                    SizedBox(
                      height: AppDimen.unitHeight * 4,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
