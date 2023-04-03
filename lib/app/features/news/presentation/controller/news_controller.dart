import 'package:get/get.dart';

import '../../data/model/news_model.dart';
import '../../domain/use_case/news_use_case_impl.dart';

class NewsController extends GetxController{
  final _newsUseCase=Get.find<NewsUseCaseImpl>();
  var newsDataModel=NewsModel().obs;
@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getNewsData();
  }
  getNewsData()async{
   newsDataModel.value= await _newsUseCase.getNewsData();
   update();
  }
}