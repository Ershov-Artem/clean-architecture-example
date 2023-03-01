import '../../domain/model/cat.dart';
import '../api/model/api_cat.dart';

class CatMapper {
  static Cat fromApi(ApiCat cat) {
    return Cat(
      image: cat.image,
    );
  }
}