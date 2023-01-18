import 'package:get/get.dart';
import 'article_item_model.dart';

class ArticleModel {
  RxList<ArticleItemModel> articleItemList =
      RxList.filled(2, ArticleItemModel());
}
