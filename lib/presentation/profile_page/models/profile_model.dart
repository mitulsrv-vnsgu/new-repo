import 'package:get/get.dart';
import 'healthtracking_item_model.dart';

class ProfileModel {
  RxList<HealthtrackingItemModel> healthtrackingItemList =
      RxList.filled(5, HealthtrackingItemModel());
}
