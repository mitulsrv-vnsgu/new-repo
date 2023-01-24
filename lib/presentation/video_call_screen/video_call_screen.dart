import 'controller/video_call_controller.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application39/core/app_export.dart';

class VideoCallScreen extends GetWidget<VideoCallController> {
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
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: size.height,
                      width: size.width,
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgPortraitsucces,
                            height: getVerticalSize(
                              768.00,
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
                              decoration:
                                  AppDecoration.gradientBlack90000Black900b2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgImage,
                                    height: getVerticalSize(
                                      112.00,
                                    ),
                                    width: getHorizontalSize(
                                      75.00,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        15.00,
                                      ),
                                    ),
                                    alignment: Alignment.centerRight,
                                    margin: getMargin(
                                      left: 20,
                                      top: 14,
                                      right: 20,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 85,
                                      top: 409,
                                      right: 85,
                                    ),
                                    child: Text(
                                      "msg_dr_marcus_hori".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtRalewayRomanSemiBold16WhiteA700
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
                                      top: 10,
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
                                  CustomImageView(
                                    svgPath: ImageConstant.imgComponent4,
                                    height: getVerticalSize(
                                      52.00,
                                    ),
                                    width: getHorizontalSize(
                                      206.00,
                                    ),
                                    margin: getMargin(
                                      left: 85,
                                      top: 26,
                                      right: 84,
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
      ),
    );
  }
}
