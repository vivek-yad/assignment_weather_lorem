import 'dart:convert';

import 'package:app/app/features/news/data/model/news_model.dart';
import 'package:app/app/secrate_key.dart';
import 'package:http/http.dart'as http;
import 'data_source.dart';

class NewsDataSourcImpl implements NewsDataSource{
  @override
  Future<NewsModel> getNewsSource() async {
    NewsModel newsModel;
   var apiUrl="https://newsapi.org/v2/top-headlines?country=us&apiKey=${SecrateKey.newsApiKey}";
   var  result = await http.get(Uri.parse(apiUrl));
   final response=jsonDecode(result.body);
   newsModel=NewsModel.fromJson(response);
   return newsModel;
    // TODO: implement getNewsSource
    throw UnimplementedError();
  }
}