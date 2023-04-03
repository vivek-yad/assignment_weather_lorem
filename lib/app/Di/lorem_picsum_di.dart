import 'package:app/app/Di/news_di.dart';
import 'package:app/app/Di/weather_di.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../features/drawer/drwawer_controler/controller.dart';
import '../features/picaso/data/data_source/remote/remote_data_source.dart';
import '../features/picaso/data/repo_impl/repository_impl.dart';
import '../features/picaso/domain/use_case/lorem_picsum_use_case_impl.dart';
import '../features/picaso/presentation/controller/lorem_picsum_controller.dart';

class DiLoremPicsum {
  static loremPicsumInit() async {
    await WeatherDi.weatherInit();
    await NewsDi.newsDiInit();
    WidgetsFlutterBinding.ensureInitialized();
    LoremPicsumDataSourceImpl loremPicsumDataSourceImpl =
        LoremPicsumDataSourceImpl();
    var dataRepo = RepositoryImpl(loremPicsumDataSourceImpl);
    Get.put(LoremPicsumUseCaseImpl(dataRepo));
    Get.put(LoremPicsumController());
    Get.put(DrawerPageController());
  }
}
