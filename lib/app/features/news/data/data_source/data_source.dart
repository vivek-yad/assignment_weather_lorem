import '../model/news_model.dart';

abstract class NewsDataSource {
  Future<NewsModel> getNewsSource();
}