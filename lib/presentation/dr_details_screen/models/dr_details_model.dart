import 'package:get/get.dart';
import 'dates_item_model.dart';
import 'listtime_item_model.dart';

class DrDetailsModel {
  RxList<DatesItemModel> datesItemList = RxList.filled(7, DatesItemModel());

  RxList<ListtimeItemModel> listtimeItemList =
      RxList.filled(3, ListtimeItemModel());
}
