import '../controller/schedule_controller.dart';
import '../models/schedule_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application38/core/app_export.dart';
import 'package:mitul_s_application38/widgets/custom_button.dart';

// ignore: must_be_immutable
class ScheduleItemWidget extends StatelessWidget {
  ScheduleItemWidget(this.scheduleItemModelObj);

  ScheduleItemModel scheduleItemModelObj;

  var controller = Get.find<ScheduleController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBluegray50.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                left: 15,
                top: 15,
                right: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: getPadding(
                      bottom: 5,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "msg_dr_marcus_horizon".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterSemiBold18Gray700.copyWith(
                            height: getVerticalSize(
                              1.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 5,
                            right: 10,
                          ),
                          child: Text(
                            "lbl_chardiologist".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium12.copyWith(
                              height: getVerticalSize(
                                1.00,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgDrugthumbnail,
                    height: getSize(
                      46.00,
                    ),
                    width: getSize(
                      46.00,
                    ),
                    margin: getMargin(
                      top: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 15,
              top: 24,
              right: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgIconlylightca,
                  height: getSize(
                    15.00,
                  ),
                  width: getSize(
                    15.00,
                  ),
                  margin: getMargin(
                    top: 1,
                    bottom: 1,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 5,
                    top: 1,
                  ),
                  child: Text(
                    "lbl_26_06_2021".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterMedium12Gray700.copyWith(
                      height: getVerticalSize(
                        1.00,
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgIconlylightti,
                  height: getSize(
                    15.00,
                  ),
                  width: getSize(
                    15.00,
                  ),
                  margin: getMargin(
                    left: 14,
                    top: 1,
                    bottom: 1,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 5,
                    top: 1,
                    bottom: 1,
                  ),
                  child: Text(
                    "lbl_10_30_am".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterMedium12Gray700.copyWith(
                      height: getVerticalSize(
                        1.00,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: getSize(
                    6.00,
                  ),
                  width: getSize(
                    6.00,
                  ),
                  margin: getMargin(
                    left: 12,
                    top: 5,
                    bottom: 4,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.green300,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        3.00,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 5,
                    bottom: 1,
                  ),
                  child: Text(
                    "lbl_confirmed".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterMedium12Gray700.copyWith(
                      height: getVerticalSize(
                        1.00,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                left: 15,
                top: 13,
                right: 15,
                bottom: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomButton(
                    height: 46,
                    width: 145,
                    text: "lbl_cancel".tr,
                    variant: ButtonVariant.FillBluegray50,
                    fontStyle: ButtonFontStyle.InterSemiBold14Gray700,
                  ),
                  CustomButton(
                    height: 46,
                    width: 145,
                    text: "lbl_reschedule".tr,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
