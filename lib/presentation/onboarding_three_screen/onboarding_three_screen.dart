import 'controller/onboarding_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application39/core/app_export.dart';
import 'package:mitul_s_application39/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingThreeScreen extends GetWidget<OnboardingThreeController> {
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
                    imagePath: ImageConstant.img7xm5,
                    height: getVerticalSize(
                      465.00,
                    ),
                    width: getHorizontalSize(
                      321.00,
                    ),
                    alignment: Alignment.topCenter,
                    margin: getMargin(
                      left: 23,
                      top: 47,
                      right: 23,
                      bottom: 47,
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
                              244.00,
                            ),
                            margin: getMargin(
                              left: 44,
                              top: 38,
                              right: 44,
                            ),
                            child: Text(
                              "msg_get_connect_our".tr,
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
                                top: 22,
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
                          CustomButton(
                            height: 56,
                            width: 291,
                            text: "lbl_get_started".tr,
                            margin: getMargin(
                              left: 42,
                              top: 54,
                              right: 42,
                              bottom: 5,
                            ),
                            padding: ButtonPadding.PaddingAll19,
                            fontStyle: ButtonFontStyle.InterSemiBold16,
                            alignment: Alignment.center,
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
