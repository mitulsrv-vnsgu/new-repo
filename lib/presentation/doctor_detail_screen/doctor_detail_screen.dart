import '../doctor_detail_screen/widgets/doctor_detail_item_widget.dart';
import 'controller/doctor_detail_controller.dart';
import 'models/doctor_detail_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application39/core/app_export.dart';
import 'package:mitul_s_application39/widgets/app_bar/appbar_image.dart';
import 'package:mitul_s_application39/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:mitul_s_application39/widgets/app_bar/custom_app_bar.dart';
import 'package:mitul_s_application39/widgets/custom_button.dart';
import 'package:mitul_s_application39/widgets/custom_icon_button.dart';

class DoctorDetailScreen extends GetWidget<DoctorDetailController> {
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
            text: "lbl_doctor_detail".tr,
          ),
          actions: [
            AppbarImage(
              height: getVerticalSize(
                16.00,
              ),
              width: getHorizontalSize(
                4.00,
              ),
              svgPath: ImageConstant.imgComponent1,
              margin: getMargin(
                left: 24,
                top: 13,
                right: 24,
                bottom: 19,
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              height: getVerticalSize(
                668.00,
              ),
              width: getHorizontalSize(
                327.00,
              ),
              margin: getMargin(
                left: 24,
                top: 24,
                right: 24,
                bottom: 28,
              ),
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      margin: getMargin(
                        left: 10,
                        top: 148,
                        bottom: 148,
                      ),
                      padding: getPadding(
                        left: 25,
                        top: 11,
                        right: 25,
                        bottom: 11,
                      ),
                      decoration: AppDecoration.txtOutlineGray101.copyWith(
                        borderRadius: BorderRadiusStyle.txtRoundedBorder15,
                      ),
                      child: Text(
                        "lbl_08_00_pm".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRalewayRomanRegular12.copyWith(
                          height: getVerticalSize(
                            1.00,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 1,
                            right: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle959,
                                height: getSize(
                                  115.00,
                                ),
                                width: getSize(
                                  115.00,
                                ),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(
                                    8.00,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 15,
                                  top: 9,
                                  bottom: 8,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "msg_dr_marcus_hori".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtRalewayRomanSemiBold18Gray901
                                          .copyWith(
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
                                        "lbl_chardiologist".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRalewayRomanMedium14Gray500
                                            .copyWith(
                                          height: getVerticalSize(
                                            1.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 8,
                                        right: 10,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CustomImageView(
                                            svgPath:
                                                ImageConstant.imgIconlyboldsta,
                                            height: getSize(
                                              18.00,
                                            ),
                                            width: getSize(
                                              18.00,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 4,
                                              top: 4,
                                              bottom: 1,
                                            ),
                                            child: Text(
                                              "lbl_4_7".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRalewayRomanMedium135
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
                                    Padding(
                                      padding: getPadding(
                                        top: 8,
                                        right: 10,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          CustomImageView(
                                            svgPath:
                                                ImageConstant.imgIconlyboldloc,
                                            height: getSize(
                                              16.00,
                                            ),
                                            width: getSize(
                                              16.00,
                                            ),
                                            margin: getMargin(
                                              top: 1,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 4,
                                              bottom: 1,
                                            ),
                                            child: Text(
                                              "lbl_800m_away".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRalewayRomanMedium14Gray500
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
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 1,
                            top: 18,
                            right: 10,
                          ),
                          child: Text(
                            "lbl_about".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRalewayRomanSemiBold16Gray901
                                .copyWith(
                              height: getVerticalSize(
                                1.00,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            305.00,
                          ),
                          margin: getMargin(
                            left: 1,
                            top: 15,
                            right: 10,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "msg_lorem_ipsum_dol2".tr,
                                  style: TextStyle(
                                    color: ColorConstant.gray601,
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
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 1,
                              top: 32,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  decoration:
                                      AppDecoration.outlineBluegray50.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder16,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          left: 12,
                                          top: 14,
                                          right: 12,
                                        ),
                                        child: Text(
                                          "lbl_mon".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRalewayRomanRegular10
                                              .copyWith(
                                            height: getVerticalSize(
                                              1.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 12,
                                          top: 4,
                                          right: 12,
                                          bottom: 15,
                                        ),
                                        child: Text(
                                          "lbl_21".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRalewayRomanSemiBold18Gray901
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
                                Container(
                                  decoration:
                                      AppDecoration.outlineBluegray50.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder16,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          left: 13,
                                          top: 14,
                                          right: 13,
                                        ),
                                        child: Text(
                                          "lbl_tue".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRalewayRomanRegular10
                                              .copyWith(
                                            height: getVerticalSize(
                                              1.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 11,
                                          top: 4,
                                          right: 11,
                                          bottom: 15,
                                        ),
                                        child: Text(
                                          "lbl_22".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRalewayRomanSemiBold18Gray901
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
                                Container(
                                  decoration:
                                      AppDecoration.fillBlue600.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder16,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          left: 11,
                                          top: 14,
                                          right: 11,
                                        ),
                                        child: Text(
                                          "lbl_wed".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRalewayRomanRegular10WhiteA700
                                              .copyWith(
                                            height: getVerticalSize(
                                              1.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 11,
                                          top: 6,
                                          right: 11,
                                          bottom: 15,
                                        ),
                                        child: Text(
                                          "lbl_23".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRalewayRomanSemiBold18
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
                                Container(
                                  decoration:
                                      AppDecoration.outlineBluegray50.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder16,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          left: 13,
                                          top: 14,
                                          right: 13,
                                        ),
                                        child: Text(
                                          "lbl_thu".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRalewayRomanRegular10
                                              .copyWith(
                                            height: getVerticalSize(
                                              1.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 11,
                                          top: 5,
                                          right: 11,
                                          bottom: 15,
                                        ),
                                        child: Text(
                                          "lbl_24".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRalewayRomanSemiBold18Gray901
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
                                Container(
                                  decoration:
                                      AppDecoration.outlineBluegray50.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder16,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          left: 16,
                                          top: 14,
                                          right: 16,
                                        ),
                                        child: Text(
                                          "lbl_fri".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRalewayRomanRegular10
                                              .copyWith(
                                            height: getVerticalSize(
                                              1.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 11,
                                          top: 6,
                                          right: 11,
                                          bottom: 15,
                                        ),
                                        child: Text(
                                          "lbl_25".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRalewayRomanSemiBold18Gray901
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
                                Container(
                                  decoration:
                                      AppDecoration.outlineBluegray50.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder16,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          left: 14,
                                          top: 14,
                                          right: 14,
                                        ),
                                        child: Text(
                                          "lbl_sat".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRalewayRomanRegular10
                                              .copyWith(
                                            height: getVerticalSize(
                                              1.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 11,
                                          top: 2,
                                          right: 11,
                                          bottom: 15,
                                        ),
                                        child: Text(
                                          "lbl_26".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRalewayRomanSemiBold18Gray901
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
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            1.00,
                          ),
                          width: getHorizontalSize(
                            327.00,
                          ),
                          margin: getMargin(
                            top: 32,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.bluegray50,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 32,
                          ),
                          child: Obx(
                            () => ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  height: getVerticalSize(
                                    14.00,
                                  ),
                                );
                              },
                              itemCount: controller.doctorDetailModelObj.value
                                  .doctorDetailItemList.length,
                              itemBuilder: (context, index) {
                                DoctorDetailItemModel model = controller
                                    .doctorDetailModelObj
                                    .value
                                    .doctorDetailItemList[index];
                                return DoctorDetailItemWidget(
                                  model,
                                );
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 14,
                            right: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                padding: getPadding(
                                  left: 25,
                                  top: 11,
                                  right: 25,
                                  bottom: 11,
                                ),
                                decoration: AppDecoration.txtOutlineBluegray101
                                    .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.txtRoundedBorder15,
                                ),
                                child: Text(
                                  "lbl_04_00_pm".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtRalewayRomanRegular12Gray901
                                      .copyWith(
                                    height: getVerticalSize(
                                      1.00,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  left: 9,
                                ),
                                padding: getPadding(
                                  left: 25,
                                  top: 11,
                                  right: 25,
                                  bottom: 11,
                                ),
                                decoration: AppDecoration.txtOutlineBluegray101
                                    .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.txtRoundedBorder15,
                                ),
                                child: Text(
                                  "lbl_07_00_pm".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtRalewayRomanRegular12Gray901
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
                        Padding(
                          padding: getPadding(
                            top: 96,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              CustomIconButton(
                                height: 50,
                                width: 50,
                                variant: IconButtonVariant.FillBlue52,
                                shape: IconButtonShape.RoundedBorder8,
                                padding: IconButtonPadding.PaddingAll13,
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgButtonchat,
                                ),
                              ),
                              CustomButton(
                                height: 50,
                                width: 266,
                                text: "lbl_book_apointment".tr,
                              ),
                            ],
                          ),
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
