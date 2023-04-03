import 'package:app/app/core/app_diemen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/news_controller.dart';

class NewsPage extends StatelessWidget {
  NewsPage({Key? key}) : super(key: key);
  NewsController newsController = Get.find<NewsController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewsController>(
      builder: (ctrl) {
        return Scaffold(
          body: Center(
            child: ListView.builder(
              itemBuilder: (context, index) {
                var data = newsController.newsDataModel.value.articles![index];
                return Card(
                  child: Column(
                    children: [
                      Text("Source:${data.source?.name}"),
                      SizedBox(height: AppDimen.unitHeight*4),
                      ListTile(
                        title: Text("Title:${data.title}"),
                        subtitle: Text("Author: ${data.author}"),
                      ),
                      SizedBox(height: AppDimen.unitHeight*4),
                      Image.network(data.urlToImage ?? ''),
                      SizedBox(height: AppDimen.unitHeight*4),
                      Text("Description: ${data.description}"),
                      SizedBox(height: AppDimen.unitHeight*4),
                      Text("publishedAt: ${data.publishedAt}"),
                    ],
                  ),
                );
              },
              itemCount: newsController.newsDataModel.value.articles?.length,
            ),
          ),
        );
      },
    );
  }
}
