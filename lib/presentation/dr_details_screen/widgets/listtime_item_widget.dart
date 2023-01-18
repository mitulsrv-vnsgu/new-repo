import '../controller/dr_details_controller.dart';
import '../models/listtime_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application38/core/app_export.dart';

// ignore: must_be_immutable
class ListtimeItemWidget extends StatelessWidget {
  ListtimeItemWidget(this.listtimeItemModelObj);

  ListtimeItemModel listtimeItemModelObj;

  var controller = Get.find<DrDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          padding: getPadding(
            left: 23,
            top: 10,
            right: 23,
            bottom: 10,
          ),
          decoration: AppDecoration.txtOutlineTeal50.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder10,
          ),
          child: Text(
            "lbl_09_00_am".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterRegular12Teal50.copyWith(
              height: getVerticalSize(
                1.00,
              ),
            ),
          ),
        ),
        Container(
          margin: getMargin(
            left: 13,
          ),
          padding: getPadding(
            left: 24,
            top: 10,
            right: 24,
            bottom: 10,
          ),
          decoration: AppDecoration.txtOutlineTeal100.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder10,
          ),
          child: Text(
            "lbl_10_00_am".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterRegular12Gray700.copyWith(
              height: getVerticalSize(
                1.00,
              ),
            ),
          ),
        ),
        Container(
          margin: getMargin(
            left: 13,
          ),
          padding: getPadding(
            left: 24,
            top: 10,
            right: 24,
            bottom: 10,
          ),
          decoration: AppDecoration.txtOutlineTeal50.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder10,
          ),
          child: Text(
            "lbl_11_00_am".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterRegular12Teal50.copyWith(
              height: getVerticalSize(
                1.00,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
