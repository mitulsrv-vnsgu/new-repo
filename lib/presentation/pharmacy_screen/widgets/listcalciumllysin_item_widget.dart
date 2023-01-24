import '../controller/pharmacy_controller.dart';
import '../models/listcalciumllysin_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application39/core/app_export.dart';

// ignore: must_be_immutable
class ListcalciumllysinItemWidget extends StatelessWidget {
  ListcalciumllysinItemWidget(this.listcalciumllysinItemModelObj);

  ListcalciumllysinItemModel listcalciumllysinItemModelObj;

  var controller = Get.find<PharmacyController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 17,
          ),
          decoration: AppDecoration.outlineBluegray50.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder11,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCalciumllysin,
                height: getVerticalSize(
                  68.00,
                ),
                width: getHorizontalSize(
                  66.00,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    34.00,
                  ),
                ),
                alignment: Alignment.center,
                margin: getMargin(
                  left: 26,
                  top: 18,
                  right: 25,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 7,
                  top: 11,
                  right: 10,
                ),
                child: Text(
                  "lbl_obh_combi".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRalewayRomanSemiBold14Gray901.copyWith(
                    height: getVerticalSize(
                      1.00,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 7,
                  top: 8,
                  right: 10,
                ),
                child: Text(
                  "lbl_75ml".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRalewayRomanMedium12Gray500.copyWith(
                    height: getVerticalSize(
                      1.00,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    left: 7,
                    top: 4,
                    right: 8,
                    bottom: 8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 1,
                          bottom: 1,
                        ),
                        child: Text(
                          "lbl_9_99".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRalewayRomanSemiBold14Black900
                              .copyWith(
                            height: getVerticalSize(
                              1.00,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          9.00,
                        ),
                        width: getHorizontalSize(
                          29.00,
                        ),
                        margin: getMargin(
                          top: 5,
                          bottom: 4,
                        ),
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: getPadding(
                                  left: 1,
                                  right: 10,
                                ),
                                child: Text(
                                  "lbl_10_99".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRalewayRomanSemiBold8
                                      .copyWith(
                                    height: getVerticalSize(
                                      1.00,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                height: getVerticalSize(
                                  1.00,
                                ),
                                width: getHorizontalSize(
                                  29.00,
                                ),
                                margin: getMargin(
                                  top: 10,
                                  bottom: 3,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.gray701,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgComponent2,
                        height: getSize(
                          18.00,
                        ),
                        width: getSize(
                          18.00,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
