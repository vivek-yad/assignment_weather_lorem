import 'package:app/app/features/picaso/data/repo_impl/repository_impl.dart';
import 'package:app/app/features/picaso/domain/entity/lorem_picsum_entity.dart';
import 'package:app/app/features/picaso/domain/use_case/abstract_lorem_use_case.dart';

import '../../data/model/lorem_picsom.dart';

class LoremPicsumUseCaseImpl implements LoremPicsumUseCase{
  RepositoryImpl dataRepo;
  LoremPicsumUseCaseImpl(this.dataRepo);

  @override
  Future<List<LoremPicsum>> call(int page, int limit) async {
   return await dataRepo.getLoremPicsumDetail( page,  limit);
  }
}