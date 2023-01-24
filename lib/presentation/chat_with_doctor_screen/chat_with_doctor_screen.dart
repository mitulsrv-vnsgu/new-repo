import 'controller/chat_with_doctor_controller.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application39/core/app_export.dart';
import 'package:mitul_s_application39/widgets/app_bar/appbar_image.dart';
import 'package:mitul_s_application39/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:mitul_s_application39/widgets/app_bar/custom_app_bar.dart';
import 'package:mitul_s_application39/widgets/custom_button.dart';
import 'package:mitul_s_application39/widgets/custom_text_form_field.dart';

class ChatWithDoctorScreen extends GetWidget<ChatWithDoctorController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            56.00,
          ),
          leadingWidth: 54,
          leading: AppbarImage(
            height: getSize(
              40.00,
            ),
            width: getSize(
              40.00,
            ),
            svgPath: ImageConstant.imgButton,
            margin: getMargin(
              left: 14,
              bottom: 8,
            ),
          ),
          centerTitle: true,
          title: Row(
            children: [
              AppbarSubtitle3(
                text: "msg_dr_marcus_hori".tr,
                margin: getMargin(
                  left: 9,
                  top: 10,
                  bottom: 19,
                ),
              ),
              AppbarImage(
                height: getSize(
                  20.00,
                ),
                width: getSize(
                  20.00,
                ),
                svgPath: ImageConstant.imgVideocamera,
                margin: getMargin(
                  left: 72,
                  top: 10,
                  bottom: 18,
                ),
              ),
            ],
          ),
          actions: [
            AppbarImage(
              height: getSize(
                20.00,
              ),
              width: getSize(
                20.00,
              ),
              svgPath: ImageConstant.imgPhone,
              margin: getMargin(
                left: 15,
                top: 10,
                bottom: 18,
              ),
            ),
            AppbarImage(
              height: getVerticalSize(
                16.00,
              ),
              width: getHorizontalSize(
                4.00,
              ),
              svgPath: ImageConstant.imgComponent1,
              margin: getMargin(
                left: 20,
                top: 12,
                right: 20,
                bottom: 20,
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
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: double.infinity,
                    margin: getMargin(
                      left: 24,
                      top: 41,
                      right: 24,
                    ),
                    decoration: AppDecoration.outlineGray200.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder11,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 40,
                            top: 18,
                            right: 40,
                          ),
                          child: Text(
                            "msg_consultion_star".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRalewayRomanSemiBold16Blue600
                                .copyWith(
                              height: getVerticalSize(
                                1.00,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 40,
                            top: 5,
                            right: 40,
                            bottom: 19,
                          ),
                          child: Text(
                            "msg_you_can_consult".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRalewayRomanMedium12Gray500
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
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 24,
                        top: 20,
                        right: 24,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgPexelscedricf,
                            height: getSize(
                              40.00,
                            ),
                            width: getSize(
                              40.00,
                            ),
                            radius: BorderRadius.circular(
                              getHorizontalSize(
                                20.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 13,
                              top: 4,
                              bottom: 2,
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
                                      .txtRalewayRomanSemiBold14Gray901
                                      .copyWith(
                                    height: getVerticalSize(
                                      1.00,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 5,
                                    right: 10,
                                  ),
                                  child: Text(
                                    "lbl_10_min_ago".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRalewayRomanMedium10
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
                  CustomButton(
                    height: 36,
                    width: 205,
                    text: "msg_hello_how_can".tr,
                    margin: getMargin(
                      left: 24,
                      top: 10,
                      right: 24,
                    ),
                    variant: ButtonVariant.FillGray200,
                    shape: ButtonShape.CustomBorderBL8,
                    padding: ButtonPadding.PaddingAll9,
                    fontStyle: ButtonFontStyle.RalewayRomanRegular14,
                    alignment: Alignment.centerLeft,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: getMargin(
                        left: 24,
                        top: 15,
                        right: 24,
                      ),
                      decoration: AppDecoration.fillBlue600.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL8,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: getHorizontalSize(
                              200.00,
                            ),
                            margin: getMargin(
                              top: 15,
                              bottom: 11,
                            ),
                            child: Text(
                              "msg_i_have_sufferin".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRalewayRomanRegular14WhiteA700
                                  .copyWith(
                                height: getVerticalSize(
                                  1.22,
                                ),
                              ),
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgBasicchecka,
                            height: getSize(
                              16.00,
                            ),
                            width: getSize(
                              16.00,
                            ),
                            margin: getMargin(
                              left: 1,
                              top: 60,
                              right: 6,
                              bottom: 6,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 25,
                        top: 15,
                        right: 25,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgPexelscedricf,
                            height: getVerticalSize(
                              40.00,
                            ),
                            width: getHorizontalSize(
                              39.00,
                            ),
                            radius: BorderRadius.circular(
                              getHorizontalSize(
                                20.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 13,
                              top: 4,
                              bottom: 2,
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
                                      .txtRalewayRomanSemiBold14Gray901
                                      .copyWith(
                                    height: getVerticalSize(
                                      1.00,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 5,
                                    right: 10,
                                  ),
                                  child: Text(
                                    "lbl_5_min_ago".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRalewayRomanMedium10
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
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: getHorizontalSize(
                        221.00,
                      ),
                      margin: getMargin(
                        left: 24,
                        top: 10,
                        right: 24,
                      ),
                      decoration: AppDecoration.fillGray200.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderBL8,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: getHorizontalSize(
                                186.00,
                              ),
                              margin: getMargin(
                                all: 13,
                              ),
                              child: Text(
                                "msg_ok_do_you_have".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRalewayRomanRegular14Gray700
                                    .copyWith(
                                  height: getVerticalSize(
                                    1.22,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: getMargin(
                        left: 24,
                        top: 15,
                        right: 24,
                      ),
                      decoration: AppDecoration.fillBlue600.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL8,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: getHorizontalSize(
                              165.00,
                            ),
                            margin: getMargin(
                              top: 13,
                              bottom: 9,
                            ),
                            child: Text(
                              "msg_i_don_t_have_an2".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRalewayRomanRegular14WhiteA700
                                  .copyWith(
                                height: getVerticalSize(
                                  1.22,
                                ),
                              ),
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgBasicchecka,
                            height: getSize(
                              16.00,
                            ),
                            width: getSize(
                              16.00,
                            ),
                            margin: getMargin(
                              left: 36,
                              top: 36,
                              right: 5,
                              bottom: 6,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 25,
                        top: 15,
                        right: 25,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgPexelscedricf,
                            height: getVerticalSize(
                              40.00,
                            ),
                            width: getHorizontalSize(
                              39.00,
                            ),
                            radius: BorderRadius.circular(
                              getHorizontalSize(
                                20.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 13,
                              top: 4,
                              bottom: 3,
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
                                      .txtRalewayRomanSemiBold14Gray901
                                      .copyWith(
                                    height: getVerticalSize(
                                      1.00,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 5,
                                    right: 10,
                                  ),
                                  child: Text(
                                    "lbl_online".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRalewayRomanMedium10
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
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: getMargin(
                        left: 24,
                        top: 10,
                        right: 24,
                      ),
                      color: ColorConstant.gray200,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusStyle.customBorderBL5,
                      ),
                      child: Container(
                        height: getVerticalSize(
                          22.00,
                        ),
                        width: getHorizontalSize(
                          58.00,
                        ),
                        decoration: AppDecoration.fillGray200.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderBL5,
                        ),
                        child: Stack(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgGroup141,
                              height: getVerticalSize(
                                5.00,
                              ),
                              width: getHorizontalSize(
                                32.00,
                              ),
                              alignment: Alignment.bottomCenter,
                              margin: getMargin(
                                left: 13,
                                top: 10,
                                right: 13,
                                bottom: 8,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 24,
                      top: 42,
                      right: 24,
                      bottom: 26,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomTextFormField(
                          width: 207,
                          focusNode: FocusNode(),
                          controller: controller.typemessageController,
                          hintText: "msg_type_message".tr,
                          variant: TextFormFieldVariant.OutlineBluegray50,
                          fontStyle:
                              TextFormFieldFontStyle.RalewayRomanRegular14,
                          textInputAction: TextInputAction.done,
                          suffix: Container(
                            margin: getMargin(
                              left: 30,
                              top: 15,
                              right: 17,
                              bottom: 15,
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgPaperclip,
                            ),
                          ),
                          suffixConstraints: BoxConstraints(
                            maxHeight: getVerticalSize(
                              50.00,
                            ),
                          ),
                        ),
                        CustomButton(
                          height: 50,
                          width: 111,
                          text: "lbl_send".tr,
                          margin: getMargin(
                            left: 9,
                          ),
                          padding: ButtonPadding.PaddingAll19,
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
