import '../controller/schedule_controller.dart';
import '../models/schedule_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application39/core/app_export.dart';
import 'package:mitul_s_application39/widgets/custom_button.dart';

// ignore: must_be_immutable
class ScheduleItemWidget extends StatelessWidget {
  ScheduleItemWidget(this.scheduleItemModelObj);

  ScheduleItemModel scheduleItemModelObj;

  var controller = Get.find<ScheduleController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineGray200.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
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
                      bottom: 7,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "msg_dr_marcus_hori".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRalewayRomanSemiBold18Gray901
                              .copyWith(
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
                            style: AppStyle.txtRalewayRomanMedium12Gray500
                                .copyWith(
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
                    imagePath: ImageConstant.imgPexelscedricf,
                    height: getSize(
                      46.00,
                    ),
                    width: getSize(
                      46.00,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        23.00,
                      ),
                    ),
                    margin: getMargin(
                      top: 2,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 15,
              top: 25,
              right: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgIconlylightca15x15,
                  height: getSize(
                    15.00,
                  ),
                  width: getSize(
                    15.00,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 5,
                    bottom: 2,
                  ),
                  child: Text(
                    "lbl_26_06_2022".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRalewayRomanMedium12Gray700.copyWith(
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
                    left: 11,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 5,
                    bottom: 1,
                  ),
                  child: Text(
                    "lbl_10_30_am".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRalewayRomanMedium12Gray700.copyWith(
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
                    left: 16,
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
                    style: AppStyle.txtRalewayRomanMedium12Gray700.copyWith(
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
                top: 14,
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
                    variant: ButtonVariant.FillGray102,
                    fontStyle: ButtonFontStyle.RalewayRomanSemiBold14,
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
