import '../controller/articles_controller.dart';
import '../models/listgroup_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application39/core/app_export.dart';

// ignore: must_be_immutable
class ListgroupItemWidget extends StatelessWidget {
  ListgroupItemWidget(this.listgroupItemModelObj);

  ListgroupItemModel listgroupItemModelObj;

  var controller = Get.find<ArticlesController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        margin: getMargin(
          right: 15,
        ),
        padding: getPadding(
          left: 28,
          top: 17,
          right: 28,
          bottom: 17,
        ),
        decoration: AppDecoration.txtFillBlue600.copyWith(
          borderRadius: BorderRadiusStyle.txtRoundedBorder10,
        ),
        child: Text(
          "lbl_covid_19".tr,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtRalewayRomanSemiBold14WhiteA700.copyWith(
            height: getVerticalSize(
              1.00,
            ),
          ),
        ),
      ),
    );
  }
}
