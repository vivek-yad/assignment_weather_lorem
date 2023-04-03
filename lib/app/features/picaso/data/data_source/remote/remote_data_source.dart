import 'dart:convert';

import 'package:app/app/features/picaso/data/model/lorem_picsom.dart';

import 'abstract_lorem_picsum_data.dart';
import 'package:http/http.dart' as http;

class LoremPicsumDataSourceImpl implements LoremPicsumDataSource {
  @override
  Future<List<LoremPicsum>> getLoremPicsumList(int page, int limit) async {
    List<LoremPicsum> loremPicsum = [];
    final String apiUrl =
        'https://picsum.photos/v2/list?page=$page&limit=$limit';
    var result = await http.get(Uri.parse(apiUrl));
    var response = jsonDecode(result.body);
    print("response====$response");
    loremPicsum = List<LoremPicsum>.from(
        json.decode(result.body).map((x) => LoremPicsum.fromJson(x)));
    print(loremPicsum);
    return loremPicsum;
    // TODO: implement getLoremPicsumList
    throw UnimplementedError();
  }
}
