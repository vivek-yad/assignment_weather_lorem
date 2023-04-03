import '../../model/lorem_picsom.dart';

abstract class LoremPicsumDataSource{
  Future <List<LoremPicsum >>getLoremPicsumList(int page,int limit);
}