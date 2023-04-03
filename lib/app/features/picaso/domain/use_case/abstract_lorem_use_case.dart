
import '../../data/model/lorem_picsom.dart';
import '../entity/lorem_picsum_entity.dart';

abstract class LoremPicsumUseCase {
  Future<List<LoremPicsum>> call();
}