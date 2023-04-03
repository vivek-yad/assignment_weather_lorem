import 'package:get/get.dart';

import '../features/news/data/data_source/news_data_source_impl.dart';
import '../features/news/data/repo_impl/news_repo_impl.dart';
import '../features/news/domain/use_case/news_use_case_impl.dart';
import '../features/news/presentation/controller/news_controller.dart';

class NewsDi {
  static newsDiInit() {
    NewsDataSourcImpl newsDataSourcImpl = NewsDataSourcImpl();
    final dataRepo = NewsRepositoryImpl(newsDataSourcImpl);
    Get.put(NewsUseCaseImpl(dataRepo));
    Get.put(NewsController());
  }
}
