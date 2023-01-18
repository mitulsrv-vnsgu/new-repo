import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application38/core/app_export.dart';
import 'package:mitul_s_application38/widgets/custom_button.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.cyan300,
            body: Container(
                width: size.width,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: getPadding(left: 17, top: 152, right: 17),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgHidoclogo,
                                    height: getVerticalSize(368.00),
                                    width: getHorizontalSize(338.00)),
                                CustomButton(
                                    height: 50,
                                    width: 335,
                                    text: "lbl_login".tr,
                                    margin: getMargin(left: 3, top: 87),
                                    variant: ButtonVariant.OutlineWhiteA700,
                                    fontStyle: ButtonFontStyle.InterSemiBold14,
                                    onTap: onTapLogin,
                                    alignment: Alignment.center)
                              ])),
                      CustomButton(
                          height: 50,
                          width: 335,
                          text: "lbl_sign_up".tr,
                          margin: getMargin(
                              left: 17, top: 15, right: 17, bottom: 5),
                          variant: ButtonVariant.FillWhiteA700,
                          fontStyle: ButtonFontStyle.InterSemiBold14Teal300,
                          onTap: onTapSignup)
                    ]))));
  }

  onTapLogin() {
    Get.toNamed(AppRoutes.loginScreen);
  }

  onTapSignup() {
    Get.toNamed(AppRoutes.signupScreen);
  }
}
