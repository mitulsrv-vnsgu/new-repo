import 'controller/onboarding_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application39/core/app_export.dart';
import 'package:mitul_s_application39/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingTwoScreen extends GetWidget<OnboardingTwoController> {
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
                    imagePath: ImageConstant.img7xm2,
                    height: getVerticalSize(
                      467.00,
                    ),
                    width: getHorizontalSize(
                      317.00,
                    ),
                    alignment: Alignment.topLeft,
                    margin: getMargin(
                      left: 21,
                      top: 52,
                      right: 21,
                      bottom: 52,
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: getHorizontalSize(
                              230.00,
                            ),
                            margin: getMargin(
                              left: 44,
                              top: 38,
                              right: 44,
                            ),
                            child: Text(
                              "msg_find_a_lot_of_s".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRalewayRomanBold22.copyWith(
                                height: getVerticalSize(
                                  1.15,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
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
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                left: 42,
                                top: 54,
                                right: 42,
                                bottom: 36,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                      style:
                                          AppStyle.txtInterRegular14.copyWith(
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
