import 'package:app/app/features/news/presentation/views/news_page.dart';
import 'package:app/app/features/picaso/presentation/views/lorem_picaso/lorem_picaso.dart';
import 'package:app/app/features/weather/prsentaion/views/weather_page.dart';
import 'package:get/get.dart';

class DrawerPageController extends GetxController{
   var data=[LoremPicaso(),NewsPage(),WeatherPage()].obs;
   Rx<int> selectIndex=0.obs;
   
   selectPage(index) async {
    // Get.back;
     selectIndex.value=index;
   //await  Get.back;
     update();
   }
}