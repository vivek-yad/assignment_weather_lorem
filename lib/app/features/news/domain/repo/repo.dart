import '../../data/model/news_model.dart';

abstract class NewsRepository{
  Future<NewsModel> getNewsData();
}