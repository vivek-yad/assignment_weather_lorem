import 'package:app/app/features/drawer/drwawer_controler/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../news/presentation/views/news_page.dart';
import '../../picaso/presentation/views/lorem_picaso/lorem_picaso.dart';
import '../../weather/prsentaion/views/weather_page.dart';

class DrawerPage extends StatelessWidget {
  DrawerPage({super.key, required this.title});

  final String title;

  var controller = Get.put(DrawerPageController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DrawerPageController>(
      builder: (cont) {
        return Scaffold(
          appBar: AppBar(title: Text(title)),
          body: Center(
            child: controller.data[controller.selectIndex.value],
          ),
          drawer: Drawer(
            // Add a ListView to the drawer. This ensures the user can scroll
            // through the options in the drawer if there isn't enough vertical
            // space to fit everything.
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text('Drawer Header'),
                ),
                ListTile(
                  title: const Text('Lorem Picsum'),
                  onTap: () {
                    Get.back();
                    controller.selectPage(0);
                  },
                ),
                ListTile(
                  title: const Text('News Page'),
                  onTap: () {
                    Get.back();
                    controller.selectPage(1);
                  },
                ),
                ListTile(
                  title: const Text('Weather Detail'),
                  onTap: () {
                    Get.back();
                    controller.selectPage(2);
                  },
                ),


              ],
            ),
          ),
        );
      },
    );
  }
}
