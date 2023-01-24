import 'package:get/get.dart';
import 'listgroup_item_model.dart';
import 'listrectangle460_item_model.dart';
import 'listunsplash86rvjm_item_model.dart';

class ArticlesModel {
  RxList<ListgroupItemModel> listgroupItemList =
      RxList.filled(3, ListgroupItemModel());

  RxList<Listrectangle460ItemModel> listrectangle460ItemList =
      RxList.filled(3, Listrectangle460ItemModel());

  RxList<Listunsplash86rvjmItemModel> listunsplash86rvjmItemList =
      RxList.filled(3, Listunsplash86rvjmItemModel());
}
