import 'package:app/app/features/picaso/data/repo_impl/repository_impl.dart';
import 'package:get/get.dart';

import '../../data/model/lorem_picsom.dart';
import '../../domain/use_case/lorem_picsum_use_case_impl.dart';

class LoremPicsumController extends GetxController {
  final _LoremPicsumUseCase = Get.find<LoremPicsumUseCaseImpl>();
  var loremDataList = RxList<LoremPicsum>().obs;
  var page = 1.obs;
  var limit = 10.obs;
  var isLoading = true.obs;

  @override
  Future<void> onInit() async {
    // TODO: implement onInit
    super.onInit();
    await getDataList();
  }

  showLoader(isLoadin) {
    isLoading.value = isLoadin;

    update();
  }

  getDataList() async {
    showLoader(true);
    var data = await _LoremPicsumUseCase.call(page.value, limit.value);
    showLoader(false);
    loremDataList.value.clear();
    print("data===ff==${data}");
    page.value = page.value + 1;
    loremDataList.value.addAll(data);
    loremDataList.value.refresh();

    update();
  }
}
