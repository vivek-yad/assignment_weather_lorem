import 'package:app/app/features/picaso/data/data_source/remote/remote_data_source.dart';
import 'package:app/app/features/picaso/domain/entity/lorem_picsum_entity.dart';

import '../../domain/repo/repository.dart';
import '../model/lorem_picsom.dart';

class RepositoryImpl implements LoremPicsumRepo{
  LoremPicsumDataSourceImpl loremPicsumDataSourceImpl;
  RepositoryImpl(this.loremPicsumDataSourceImpl);

  @override
  Future<List<LoremPicsum>> getLoremPicsumDetail() async {
    return await loremPicsumDataSourceImpl.getLoremPicsumList();
  }
}