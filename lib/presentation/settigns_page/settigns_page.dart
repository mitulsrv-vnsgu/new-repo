import '../settigns_page/widgets/settigns_item_widget.dart';
import 'controller/settigns_controller.dart';
import 'models/settigns_item_model.dart';
import 'models/settigns_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application38/core/app_export.dart';
import 'package:mitul_s_application38/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class SettignsPage extends StatelessWidget {
  SettignsController controller =
      Get.put(SettignsController(SettignsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        body: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(
                0.5,
                0,
              ),
              end: Alignment(
                -4.26325996727428e-9,
                0.47044334295936424,
              ),
              colors: [
                ColorConstant.cyan300,
                ColorConstant.teal400,
              ],
            ),
          ),
          child: Container(
            width: size.width,
            decoration: AppDecoration.gradientCyan300Teal400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      width: size.width,
                      margin: getMargin(
                        top: 25,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgMoreicon,
                            height: getVerticalSize(
                              16.00,
                            ),
                            width: getHorizontalSize(
                              4.00,
                            ),
                            alignment: Alignment.centerRight,
                            margin: getMargin(
                              left: 20,
                              right: 20,
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(
                              80.00,
                            ),
                            margin: getMargin(
                              left: 20,
                              top: 3,
                              right: 20,
                            ),
                            decoration: AppDecoration.fillGray400.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder40,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: getMargin(
                                      left: 60,
                                      top: 59,
                                      right: 4,
                                      bottom: 5,
                                    ),
                                    color: ColorConstant.whiteA700,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder8,
                                    ),
                                    child: Container(
                                      height: getSize(
                                        16.00,
                                      ),
                                      width: getSize(
                                        16.00,
                                      ),
                                      decoration:
                                          AppDecoration.fillWhiteA700.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder8,
                                      ),
                                      child: Stack(
                                        children: [
                                          CustomImageView(
                                            svgPath: ImageConstant.imgCamera,
                                            height: getSize(
                                              10.00,
                                            ),
                                            width: getSize(
                                              10.00,
                                            ),
                                            alignment: Alignment.center,
                                            margin: getMargin(
                                              all: 3,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 20,
                              top: 19,
                              right: 20,
                            ),
                            child: Text(
                              "lbl_amelia_renata".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold18.copyWith(
                                height: getVerticalSize(
                                  1.00,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              101.00,
                            ),
                            child: Obx(
                              () => ListView.separated(
                                padding: getPadding(
                                  left: 20,
                                  top: 29,
                                  right: 20,
                                ),
                                scrollDirection: Axis.horizontal,
                                physics: BouncingScrollPhysics(),
                                separatorBuilder: (context, index) {
                                  return Container(
                                    height: getVerticalSize(
                                      44.00,
                                    ),
                                    width: getHorizontalSize(
                                      1.00,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.cyan100,
                                    ),
                                  );
                                },
                                itemCount: controller.settignsModelObj.value
                                    .settignsItemList.length,
                                itemBuilder: (context, index) {
                                  SettignsItemModel model = controller
                                      .settignsModelObj
                                      .value
                                      .settignsItemList[index];
                                  return SettignsItemWidget(
                                    model,
                                  );
                                },
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: double.infinity,
                              margin: getMargin(
                                top: 41,
                              ),
                              decoration: AppDecoration.fillWhiteA700.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderTL30,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      left: 20,
                                      top: 31,
                                      right: 20,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            CustomIconButton(
                                              height: 43,
                                              width: 43,
                                              child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgLikeicon,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 18,
                                                top: 12,
                                                bottom: 10,
                                              ),
                                              child: Text(
                                                "lbl_my_saved".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterSemiBold16
                                                    .copyWith(
                                                  height: getVerticalSize(
                                                    1.00,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant.imgArrowright,
                                          height: getSize(
                                            24.00,
                                          ),
                                          width: getSize(
                                            24.00,
                                          ),
                                          margin: getMargin(
                                            top: 10,
                                            bottom: 9,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: getVerticalSize(
                                      1.00,
                                    ),
                                    width: getHorizontalSize(
                                      335.00,
                                    ),
                                    margin: getMargin(
                                      left: 20,
                                      top: 13,
                                      right: 20,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.bluegray50,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 20,
                                      top: 13,
                                      right: 20,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            CustomIconButton(
                                              height: 43,
                                              width: 43,
                                              child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgAppointmenticoCyan300,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 18,
                                                top: 12,
                                                bottom: 10,
                                              ),
                                              child: Text(
                                                "lbl_appointmnet".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterSemiBold16
                                                    .copyWith(
                                                  height: getVerticalSize(
                                                    1.00,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant.imgArrowright,
                                          height: getSize(
                                            24.00,
                                          ),
                                          width: getSize(
                                            24.00,
                                          ),
                                          margin: getMargin(
                                            top: 10,
                                            bottom: 9,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: getVerticalSize(
                                      1.00,
                                    ),
                                    width: getHorizontalSize(
                                      335.00,
                                    ),
                                    margin: getMargin(
                                      left: 20,
                                      top: 13,
                                      right: 20,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.bluegray50,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 20,
                                      top: 13,
                                      right: 20,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            CustomIconButton(
                                              height: 43,
                                              width: 43,
                                              child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgPaymenticon,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 18,
                                                top: 12,
                                                bottom: 10,
                                              ),
                                              child: Text(
                                                "lbl_payment_method".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterSemiBold16
                                                    .copyWith(
                                                  height: getVerticalSize(
                                                    1.00,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant.imgArrowright,
                                          height: getSize(
                                            24.00,
                                          ),
                                          width: getSize(
                                            24.00,
                                          ),
                                          margin: getMargin(
                                            top: 9,
                                            bottom: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: getVerticalSize(
                                      1.00,
                                    ),
                                    width: getHorizontalSize(
                                      335.00,
                                    ),
                                    margin: getMargin(
                                      left: 20,
                                      top: 13,
                                      right: 20,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.bluegray50,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 20,
                                      top: 13,
                                      right: 20,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            CustomIconButton(
                                              height: 43,
                                              width: 43,
                                              child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgFaqsicon,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 18,
                                                top: 11,
                                                bottom: 11,
                                              ),
                                              child: Text(
                                                "lbl_faqs".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterSemiBold16
                                                    .copyWith(
                                                  height: getVerticalSize(
                                                    1.00,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant.imgArrowright,
                                          height: getSize(
                                            24.00,
                                          ),
                                          width: getSize(
                                            24.00,
                                          ),
                                          margin: getMargin(
                                            top: 10,
                                            bottom: 9,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: getVerticalSize(
                                      1.00,
                                    ),
                                    width: getHorizontalSize(
                                      335.00,
                                    ),
                                    margin: getMargin(
                                      left: 20,
                                      top: 13,
                                      right: 20,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.bluegray50,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 20,
                                      top: 13,
                                      right: 20,
                                      bottom: 55,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            CustomIconButton(
                                              height: 43,
                                              width: 43,
                                              child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgIconlylightou,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 18,
                                                top: 12,
                                                bottom: 10,
                                              ),
                                              child: Text(
                                                "lbl_help".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterSemiBold16
                                                    .copyWith(
                                                  height: getVerticalSize(
                                                    1.00,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant.imgArrowright,
                                          height: getSize(
                                            24.00,
                                          ),
                                          width: getSize(
                                            24.00,
                                          ),
                                          margin: getMargin(
                                            top: 10,
                                            bottom: 9,
                                          ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
