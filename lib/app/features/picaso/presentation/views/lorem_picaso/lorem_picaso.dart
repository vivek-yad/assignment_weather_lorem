import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/lorem_picsum_controller.dart';

class LoremPicaso extends StatelessWidget {
  LoremPicaso({Key? key}) : super(key: key);
  LoremPicsumController  detailController = Get.find<LoremPicsumController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder< LoremPicsumController>(builder: (cont) {
      return Scaffold(
        body: Center(
          child: ListView.builder(
            itemBuilder: (contxt, index) {
              var data = detailController.loremDataList.value[index];
              return Text(data.author);
            },
            itemCount: detailController.loremDataList.value.length,
          ),
        ),
      );
    });
  }
}
