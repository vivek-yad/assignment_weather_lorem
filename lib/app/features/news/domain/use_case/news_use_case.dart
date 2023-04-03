import '../../data/model/news_model.dart';

abstract class NewsUseCase {
  Future<NewsModel> getNewsData();
}