import 'package:app/app/features/picaso/data/repo_impl/repository_impl.dart';
import 'package:get/get.dart';

import '../../data/model/lorem_picsom.dart';
import '../../domain/use_case/lorem_picsum_use_case_impl.dart';

class LoremPicsumController extends GetxController {


  final _LoremPicsumUseCase = Get.find<LoremPicsumUseCaseImpl>();
  var loremDataList = RxList<LoremPicsum>().obs;

  @override
  Future<void> onInit() async {
    // TODO: implement onInit
    super.onInit();
   await getDataList();
  }

  getDataList() async {
    var data = await _LoremPicsumUseCase();
    loremDataList.value.clear();
    print("data===ff==${data}");
    loremDataList.value.addAll(data);
    loremDataList.value.refresh();
    update();
  }
}
