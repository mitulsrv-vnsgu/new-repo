import 'controller/onboarding_four_controller.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application39/core/app_export.dart';
import 'package:mitul_s_application39/widgets/custom_button.dart';

class OnboardingFourScreen extends GetWidget<OnboardingFourController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgVector,
                    height: getVerticalSize(
                      66.00,
                    ),
                    width: getHorizontalSize(
                      59.00,
                    ),
                    margin: getMargin(
                      left: 24,
                      top: 179,
                      right: 24,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 24,
                      top: 6,
                      right: 24,
                    ),
                    child: Text(
                      "lbl_helthio".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRalewayRomanBold25.copyWith(
                        height: getVerticalSize(
                          1.00,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 24,
                      top: 42,
                      right: 24,
                    ),
                    child: Text(
                      "msg_let_s_get_start".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRalewayRomanBold22.copyWith(
                        height: getVerticalSize(
                          1.15,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      260.00,
                    ),
                    margin: getMargin(
                      left: 24,
                      top: 14,
                      right: 24,
                    ),
                    child: Text(
                      "msg_login_to_enjoy".tr,
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtRalewayRomanMedium16.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.50,
                        ),
                        height: getVerticalSize(
                          1.28,
                        ),
                      ),
                    ),
                  ),
                  CustomButton(
                    height: 56,
                    width: 327,
                    text: "lbl_login".tr,
                    margin: getMargin(
                      left: 24,
                      top: 178,
                      right: 24,
                    ),
                  ),
                  CustomButton(
                    height: 56,
                    width: 328,
                    text: "lbl_sign_up".tr,
                    margin: getMargin(
                      left: 24,
                      top: 16,
                      right: 23,
                      bottom: 5,
                    ),
                    variant: ButtonVariant.OutlineBlue600,
                    fontStyle: ButtonFontStyle.RalewayRomanSemiBold16Blue600,
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
