import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application39/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.blue600,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgVectorWhiteA700,
                    height: getVerticalSize(
                      130.00,
                    ),
                    width: getHorizontalSize(
                      117.00,
                    ),
                    margin: getMargin(
                      left: 100,
                      top: 259,
                      right: 100,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 100,
                      top: 16,
                      right: 100,
                      bottom: 5,
                    ),
                    child: Text(
                      "lbl_helthio".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRalewayRomanBold50.copyWith(
                        height: getVerticalSize(
                          1.00,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
