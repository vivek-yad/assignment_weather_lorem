import '../../data/model/lorem_picsom.dart';
import '../entity/lorem_picsum_entity.dart';

abstract class LoremPicsumRepo {
  Future<List<LoremPicsum>> getLoremPicsumDetail(int page,int limit);
}
