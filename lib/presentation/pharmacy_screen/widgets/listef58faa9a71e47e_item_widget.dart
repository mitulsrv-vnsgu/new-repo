import '../controller/pharmacy_controller.dart';
import '../models/listef58faa9a71e47e_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application39/core/app_export.dart';

// ignore: must_be_immutable
class Listef58faa9a71e47eItemWidget extends StatelessWidget {
  Listef58faa9a71e47eItemWidget(this.listef58faa9a71e47eItemModelObj);

  Listef58faa9a71e47eItemModel listef58faa9a71e47eItemModelObj;

  var controller = Get.find<PharmacyController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 21,
          ),
          decoration: AppDecoration.outlineBluegray50.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder11,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEf58faa9a71e47e,
                height: getVerticalSize(
                  58.00,
                ),
                width: getHorizontalSize(
                  56.00,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    29.00,
                  ),
                ),
                alignment: Alignment.center,
                margin: getMargin(
                  left: 30,
                  top: 21,
                  right: 30,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 8,
                  top: 15,
                  right: 10,
                ),
                child: Text(
                  "lbl_panadol".tr,
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
                  left: 8,
                  top: 10,
                  right: 10,
                ),
                child: Text(
                  "lbl_20pcs".tr,
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
                    left: 8,
                    top: 5,
                    right: 7,
                    bottom: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 1,
                          bottom: 1,
                        ),
                        child: Text(
                          "lbl_15_99".tr,
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
