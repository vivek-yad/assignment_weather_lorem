import 'package:app/app/features/news/data/data_source/news_data_source_impl.dart';
import 'package:app/app/features/news/data/model/news_model.dart';

import '../../domain/repo/repo.dart';

class NewsRepositoryImpl implements NewsRepository{
  NewsDataSourcImpl newsDataSourcImpl;
  NewsRepositoryImpl(this.newsDataSourcImpl);

  @override
  Future<NewsModel> getNewsData() {
    return newsDataSourcImpl.getNewsSource();
    throw UnimplementedError();
  }
}