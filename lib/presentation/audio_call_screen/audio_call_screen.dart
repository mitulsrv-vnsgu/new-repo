import 'controller/audio_call_controller.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application39/core/app_export.dart';
import 'package:mitul_s_application39/widgets/custom_floating_button.dart';
import 'package:mitul_s_application39/widgets/custom_icon_button.dart';

class AudioCallScreen extends GetWidget<AudioCallController> {
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: getVerticalSize(
                        812.00,
                      ),
                      width: size.width,
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImage10,
                            height: getVerticalSize(
                              812.00,
                            ),
                            width: getHorizontalSize(
                              375.00,
                            ),
                            alignment: Alignment.centerLeft,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: size.width,
                              decoration: AppDecoration.fillGray40033,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgImage10115x115,
                                    height: getSize(
                                      115.00,
                                    ),
                                    width: getSize(
                                      115.00,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        57.50,
                                      ),
                                    ),
                                    margin: getMargin(
                                      left: 85,
                                      top: 324,
                                      right: 85,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 85,
                                      top: 169,
                                      right: 85,
                                    ),
                                    child: Text(
                                      "lbl_00_05_24".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtRalewayRomanMedium14WhiteA700
                                          .copyWith(
                                        height: getVerticalSize(
                                          1.00,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 85,
                                      top: 26,
                                      right: 84,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        CustomIconButton(
                                          height: 52,
                                          width: 52,
                                          variant:
                                              IconButtonVariant.FillGray40087,
                                          shape: IconButtonShape.CircleBorder26,
                                          padding:
                                              IconButtonPadding.PaddingAll13,
                                          child: CustomImageView(
                                            svgPath: ImageConstant.imgGroup71,
                                          ),
                                        ),
                                        CustomIconButton(
                                          height: 52,
                                          width: 52,
                                          variant:
                                              IconButtonVariant.FillGray40087,
                                          shape: IconButtonShape.CircleBorder26,
                                          padding:
                                              IconButtonPadding.PaddingAll13,
                                          child: CustomImageView(
                                            svgPath: ImageConstant.imgGroup69,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgIconlylightar,
                                    height: getSize(
                                      20.00,
                                    ),
                                    width: getSize(
                                      20.00,
                                    ),
                                    margin: getMargin(
                                      left: 85,
                                      top: 50,
                                      right: 85,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 85,
                                      top: 1,
                                      right: 85,
                                      bottom: 25,
                                    ),
                                    child: Text(
                                      "msg_swipe_back_to_m".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtRalewayRomanMedium14WhiteA700
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
        floatingActionButton: CustomFloatingButton(
          height: 52,
          width: 52,
          child: CustomImageView(
            svgPath: ImageConstant.imgGroup70,
            height: getVerticalSize(
              26.00,
            ),
            width: getHorizontalSize(
              26.00,
            ),
          ),
        ),
      ),
    );
  }
}
