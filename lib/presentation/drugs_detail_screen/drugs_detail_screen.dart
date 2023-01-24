import 'controller/drugs_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mitul_s_application39/core/app_export.dart';
import 'package:mitul_s_application39/widgets/app_bar/appbar_image.dart';
import 'package:mitul_s_application39/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:mitul_s_application39/widgets/app_bar/custom_app_bar.dart';
import 'package:mitul_s_application39/widgets/custom_button.dart';
import 'package:mitul_s_application39/widgets/custom_icon_button.dart';

class DrugsDetailScreen extends GetWidget<DrugsDetailController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            56.00,
          ),
          leadingWidth: 64,
          leading: AppbarImage(
            height: getSize(
              40.00,
            ),
            width: getSize(
              40.00,
            ),
            svgPath: ImageConstant.imgButton,
            margin: getMargin(
              left: 24,
              bottom: 8,
            ),
          ),
          centerTitle: true,
          title: AppbarSubtitle3(
            text: "lbl_pharmacy".tr,
          ),
          actions: [
            AppbarImage(
              height: getSize(
                24.00,
              ),
              width: getSize(
                24.00,
              ),
              svgPath: ImageConstant.imgIconlylightbu,
              margin: getMargin(
                left: 24,
                top: 9,
                right: 24,
                bottom: 15,
              ),
            ),
          ],
        ),
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
                    imagePath: ImageConstant.imgHealthvitllys,
                    height: getSize(
                      163.00,
                    ),
                    width: getSize(
                      163.00,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        81.50,
                      ),
                    ),
                    alignment: Alignment.centerLeft,
                    margin: getMargin(
                      left: 98,
                      top: 54,
                      right: 98,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 20,
                      top: 59,
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_obh_combi".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.txtRalewayRomanSemiBold20.copyWith(
                                height: getVerticalSize(
                                  1.00,
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 9,
                                right: 10,
                              ),
                              child: Text(
                                "lbl_75ml".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRalewayRomanSemiBold16Gray500
                                    .copyWith(
                                  height: getVerticalSize(
                                    1.00,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 12,
                                right: 10,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  RatingBar.builder(
                                    initialRating: 0,
                                    minRating: 0,
                                    direction: Axis.horizontal,
                                    allowHalfRating: false,
                                    itemSize: getVerticalSize(
                                      14.00,
                                    ),
                                    itemCount: 4,
                                    updateOnDrag: true,
                                    onRatingUpdate: (rating) {},
                                    itemBuilder: (context, _) {
                                      return Icon(
                                        Icons.star,
                                      );
                                    },
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 5,
                                      top: 1,
                                    ),
                                    child: Text(
                                      "lbl_4_0".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtRalewayRomanSemiBold14Amber500
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
                          ],
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgIconlyboldhea,
                          height: getSize(
                            24.00,
                          ),
                          width: getSize(
                            24.00,
                          ),
                          margin: getMargin(
                            top: 27,
                            bottom: 26,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 20,
                      top: 31,
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgComponent3,
                              height: getSize(
                                32.00,
                              ),
                              width: getSize(
                                32.00,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 23,
                                top: 5,
                                bottom: 2,
                              ),
                              child: Text(
                                "lbl_1".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style:
                                    AppStyle.txtRalewayRomanSemiBold24.copyWith(
                                  height: getVerticalSize(
                                    1.00,
                                  ),
                                ),
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgComponent2,
                              height: getSize(
                                32.00,
                              ),
                              width: getSize(
                                32.00,
                              ),
                              margin: getMargin(
                                left: 28,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: getPadding(
                            top: 1,
                          ),
                          child: Text(
                            "lbl_9_99".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRalewayRomanSemiBold26.copyWith(
                              height: getVerticalSize(
                                1.00,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 21,
                        top: 40,
                        right: 21,
                      ),
                      child: Text(
                        "lbl_description".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style:
                            AppStyle.txtRalewayRomanSemiBold16Gray901.copyWith(
                          height: getVerticalSize(
                            1.00,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      328.00,
                    ),
                    margin: getMargin(
                      left: 20,
                      top: 15,
                      right: 20,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_obh_combi_is_a2".tr,
                            style: TextStyle(
                              color: ColorConstant.bluegray401,
                              fontSize: getFontSize(
                                12,
                              ),
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w400,
                              height: getVerticalSize(
                                1.38,
                              ),
                            ),
                          ),
                          TextSpan(
                            text: "lbl_read_more".tr,
                            style: TextStyle(
                              color: ColorConstant.blue600,
                              fontSize: getFontSize(
                                12,
                              ),
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w500,
                              height: getVerticalSize(
                                1.38,
                              ),
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 20,
                      top: 77,
                      right: 20,
                      bottom: 28,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomIconButton(
                          height: 50,
                          width: 50,
                          shape: IconButtonShape.RoundedBorder8,
                          padding: IconButtonPadding.PaddingAll13,
                          child: CustomImageView(
                            svgPath: ImageConstant.imgBuyicon,
                          ),
                        ),
                        CustomButton(
                          height: 50,
                          width: 266,
                          text: "lbl_buy_now".tr,
                        ),
                      ],
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
