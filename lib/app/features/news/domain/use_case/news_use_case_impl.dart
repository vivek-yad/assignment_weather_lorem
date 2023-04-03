import 'package:app/app/features/news/data/model/news_model.dart';
import 'package:app/app/features/news/data/repo_impl/news_repo_impl.dart';

import 'news_use_case.dart';

class NewsUseCaseImpl implements NewsUseCase {
  NewsRepositoryImpl dataRepo;

  NewsUseCaseImpl(this.dataRepo);

  @override
  Future<NewsModel> getNewsData() {
    return dataRepo.getNewsData();
    // TODO: implement getNewsData
    throw UnimplementedError();
  }
}
