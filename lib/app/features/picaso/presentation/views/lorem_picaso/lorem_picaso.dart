import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/lorem_picsum_controller.dart';

class LoremPicaso extends StatelessWidget {
  LoremPicaso({Key? key}) : super(key: key);
  LoremPicsumController detailController = Get.find<LoremPicsumController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoremPicsumController>(builder: (cont) {
      return Scaffold(
        body: Stack(
          children: [
            Center(
              child: NotificationListener<ScrollNotification>(
                onNotification: (notification) {
                  if (notification is ScrollEndNotification) {
                    if (notification.metrics.pixels >=
                        notification.metrics.maxScrollExtent) {
                      detailController.getDataList();
                    }
                  }
                  return true;
                },
                child: ListView.builder(
                  itemBuilder: (contxt, index) {
                    if (detailController.loremDataList.value.length == index) {
                      return detailController.isLoading.value
                          ? Center(child: CircularProgressIndicator())
                          : Container();
                    }
                    var data = detailController.loremDataList.value[index];
                    return Card(
                      child: Column(
                        children: [
                          Text("Author: ${data.author}"),
                          Image.network(
                            data.downloadUrl,
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: detailController.loremDataList.value.length + 1,
                ),
              ),
            ),
            if (detailController.isLoading.value == true)
              Center(child: const CircularProgressIndicator())
          ],
        ),
      );
    });
  }
}
