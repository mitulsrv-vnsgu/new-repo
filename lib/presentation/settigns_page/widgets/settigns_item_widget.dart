import '../controller/settigns_controller.dart';
import '../models/settigns_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application38/core/app_export.dart';

// ignore: must_be_immutable
class SettignsItemWidget extends StatelessWidget {
  SettignsItemWidget(this.settignsItemModelObj);

  SettignsItemModel settignsItemModelObj;

  var controller = Get.find<SettignsController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Padding(
        padding: getPadding(
          right: 61,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              svgPath: ImageConstant.imgHeartbeat,
              height: getSize(
                32.00,
              ),
              width: getSize(
                32.00,
              ),
              margin: getMargin(
                left: 15,
                right: 15,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 7,
                top: 4,
                right: 7,
              ),
              child: Text(
                "lbl_heart_rate".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterSemiBold10Cyan100.copyWith(
                  height: getVerticalSize(
                    1.00,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: getPadding(
                  top: 2,
                ),
                child: Text(
                  "lbl_215bpm".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterSemiBold16WhiteA700.copyWith(
                    height: getVerticalSize(
                      1.00,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
