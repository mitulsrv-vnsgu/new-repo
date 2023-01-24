import 'controller/onboarding_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application39/core/app_export.dart';
import 'package:mitul_s_application39/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingOneScreen extends GetWidget<OnboardingOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(
                0.5,
                -3.0616171314629196e-17,
              ),
              end: Alignment(
                0.5,
                0.9999999999999999,
              ),
              colors: [
                ColorConstant.blue601,
                ColorConstant.blue700,
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Container(
              height: size.height,
              width: size.width,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img7xm1,
                    height: getVerticalSize(
                      468.00,
                    ),
                    width: getHorizontalSize(
                      311.00,
                    ),
                    alignment: Alignment.topCenter,
                    margin: getMargin(
                      left: 27,
                      top: 51,
                      right: 27,
                      bottom: 51,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      width: size.width,
                      margin: getMargin(
                        top: 10,
                      ),
                      decoration: AppDecoration.fillWhiteA700.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL64,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: getHorizontalSize(
                              276.00,
                            ),
                            margin: getMargin(
                              left: 42,
                              top: 38,
                              right: 42,
                            ),
                            child: Text(
                              "msg_consult_only_wi".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRalewayRomanBold22.copyWith(
                                height: getVerticalSize(
                                  1.15,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              8.00,
                            ),
                            margin: getMargin(
                              left: 42,
                              top: 16,
                              right: 42,
                            ),
                            child: SmoothIndicator(
                              offset: 0,
                              count: 3,
                              axisDirection: Axis.horizontal,
                              effect: ScrollingDotsEffect(
                                spacing: 4,
                                activeDotColor: ColorConstant.blue600,
                                dotColor: ColorConstant.blue100,
                                dotHeight: getVerticalSize(
                                  8.00,
                                ),
                                dotWidth: getHorizontalSize(
                                  8.00,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 42,
                              top: 54,
                              right: 42,
                              bottom: 36,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 22,
                                    bottom: 18,
                                  ),
                                  child: Text(
                                    "lbl_skip".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular14.copyWith(
                                      height: getVerticalSize(
                                        1.16,
                                      ),
                                    ),
                                  ),
                                ),
                                CustomButton(
                                  height: 56,
                                  width: 145,
                                  text: "lbl_next".tr,
                                  padding: ButtonPadding.PaddingAll19,
                                  fontStyle: ButtonFontStyle.InterSemiBold16,
                                ),
                              ],
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
        ),
      ),
    );
  }
}
