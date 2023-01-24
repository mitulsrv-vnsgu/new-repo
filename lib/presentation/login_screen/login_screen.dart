import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application39/core/app_export.dart';
import 'package:mitul_s_application39/widgets/app_bar/appbar_image.dart';
import 'package:mitul_s_application39/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:mitul_s_application39/widgets/app_bar/custom_app_bar.dart';
import 'package:mitul_s_application39/widgets/custom_button.dart';
import 'package:mitul_s_application39/widgets/custom_text_form_field.dart';
import 'package:mitul_s_application39/domain/googleauth/google_auth_helper.dart';
import 'package:mitul_s_application39/domain/facebookauth/facebook_auth_helper.dart';

class LoginScreen extends GetWidget<LoginController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 64,
                leading: AppbarImage(
                    height: getSize(40.00),
                    width: getSize(40.00),
                    svgPath: ImageConstant.imgButton,
                    margin: getMargin(left: 24, bottom: 8)),
                centerTitle: true,
                title: AppbarSubtitle2(text: "lbl_login".tr)),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        width: size.width,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomTextFormField(
                                  width: 327,
                                  focusNode: FocusNode(),
                                  controller: controller.inputController,
                                  hintText: "msg_enter_your_emai".tr,
                                  margin:
                                      getMargin(left: 24, top: 32, right: 24),
                                  textInputType: TextInputType.emailAddress,
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 24,
                                          top: 16,
                                          right: 16,
                                          bottom: 16),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgIconEmail)),
                                  prefixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(56.00))),
                              Obx(() => CustomTextFormField(
                                  width: 327,
                                  focusNode: FocusNode(),
                                  controller: controller.inputOneController,
                                  hintText: "msg_enter_your_pass".tr,
                                  margin:
                                      getMargin(left: 24, top: 16, right: 24),
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.visiblePassword,
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 24,
                                          top: 16,
                                          right: 16,
                                          bottom: 16),
                                      child: CustomImageView(
                                          svgPath:
                                              ImageConstant.imgIconPassword)),
                                  prefixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(56.00)),
                                  suffix: InkWell(
                                      onTap: () {
                                        controller.isShowPassword.value =
                                            !controller.isShowPassword.value;
                                      },
                                      child: Container(
                                          margin: getMargin(
                                              left: 30,
                                              top: 16,
                                              right: 24,
                                              bottom: 16),
                                          child: CustomImageView(
                                              svgPath: controller
                                                      .isShowPassword.value
                                                  ? ImageConstant
                                                      .imgIconEyeSlash
                                                  : ImageConstant
                                                      .imgIconEyeSlash))),
                                  suffixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(56.00)),
                                  isObscureText:
                                      !controller.isShowPassword.value)),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 24, top: 12, right: 24),
                                      child: Text("msg_forgot_password".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRalewayRomanMedium14
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(1.19))))),
                              CustomButton(
                                  height: 56,
                                  width: 327,
                                  text: "lbl_login".tr,
                                  margin:
                                      getMargin(left: 24, top: 32, right: 24)),
                              Padding(
                                  padding:
                                      getPadding(left: 24, top: 29, right: 24),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "msg_don_t_have_an_a2".tr,
                                            style: TextStyle(
                                                color: ColorConstant.gray600,
                                                fontSize: getFontSize(15),
                                                fontFamily: 'Raleway',
                                                fontWeight: FontWeight.w400,
                                                letterSpacing:
                                                    getHorizontalSize(0.50),
                                                height: getVerticalSize(1.26))),
                                        TextSpan(
                                            text: " ",
                                            style: TextStyle(
                                                color: ColorConstant.gray600,
                                                fontSize: getFontSize(15),
                                                fontFamily: 'Raleway',
                                                fontWeight: FontWeight.w400,
                                                height: getVerticalSize(1.08))),
                                        TextSpan(
                                            text: "lbl_sign_up".tr,
                                            style: TextStyle(
                                                color: ColorConstant.blue600,
                                                fontSize: getFontSize(15),
                                                fontFamily: 'Raleway',
                                                fontWeight: FontWeight.w500,
                                                height: getVerticalSize(1.26)))
                                      ]),
                                      textAlign: TextAlign.left)),
                              Container(
                                  height: getVerticalSize(31.00),
                                  width: getHorizontalSize(327.00),
                                  margin:
                                      getMargin(left: 24, top: 25, right: 24),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Container(
                                                height: getVerticalSize(1.00),
                                                width:
                                                    getHorizontalSize(327.00),
                                                margin: getMargin(
                                                    top: 14, bottom: 14),
                                                decoration: BoxDecoration(
                                                    color: ColorConstant
                                                        .gray200))),
                                        CustomButton(
                                            height: 31,
                                            width: 53,
                                            text: "lbl_or".tr,
                                            margin:
                                                getMargin(left: 40, right: 40),
                                            variant:
                                                ButtonVariant.FillWhiteA700,
                                            shape: ButtonShape.Square,
                                            padding: ButtonPadding.PaddingAll6,
                                            fontStyle: ButtonFontStyle
                                                .RalewayRomanRegular16,
                                            alignment: Alignment.center)
                                      ])),
                              GestureDetector(
                                  onTap: () {
                                    onTapButtonwithG();
                                  },
                                  child: Container(
                                      margin: getMargin(
                                          left: 24, top: 24, right: 24),
                                      decoration: AppDecoration.outlineGray200
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder8),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgGoogle,
                                                height: getVerticalSize(20.00),
                                                width: getHorizontalSize(19.00),
                                                margin: getMargin(
                                                    left: 18,
                                                    top: 18,
                                                    bottom: 18),
                                                onTap: () {
                                                  onTapImgGoogle();
                                                }),
                                            Padding(
                                                padding: getPadding(
                                                    left: 52,
                                                    top: 21,
                                                    bottom: 16),
                                                child: Text(
                                                    "msg_sign_in_with_go".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRalewayRomanSemiBold16
                                                        .copyWith(
                                                            height:
                                                                getVerticalSize(
                                                                    1.28))))
                                          ]))),
                              Container(
                                  margin:
                                      getMargin(left: 24, top: 16, right: 24),
                                  decoration: AppDecoration.outlineGray200
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder8),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgApple,
                                            height: getVerticalSize(20.00),
                                            width: getHorizontalSize(16.00),
                                            margin: getMargin(
                                                left: 18, top: 18, bottom: 18)),
                                        Padding(
                                            padding: getPadding(
                                                left: 60, top: 21, bottom: 16),
                                            child: Text(
                                                "msg_sign_in_with_ap".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRalewayRomanSemiBold16
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.28))))
                                      ])),
                              GestureDetector(
                                  onTap: () {
                                    onTapButtonwithF();
                                  },
                                  child: Container(
                                      margin: getMargin(
                                          left: 24,
                                          top: 16,
                                          right: 24,
                                          bottom: 117),
                                      decoration: AppDecoration.outlineGray200
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder8),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Card(
                                                clipBehavior: Clip.antiAlias,
                                                elevation: 0,
                                                margin: getMargin(
                                                    left: 18,
                                                    top: 18,
                                                    bottom: 18),
                                                color: ColorConstant.blue602,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder8),
                                                child: Container(
                                                    height: getSize(20.00),
                                                    width: getSize(20.00),
                                                    decoration: AppDecoration
                                                        .fillBlue602
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder8),
                                                    child: Stack(children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgF,
                                                          height:
                                                              getVerticalSize(
                                                                  11.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  6.00),
                                                          alignment:
                                                              Alignment.center,
                                                          margin: getMargin(
                                                              left: 7,
                                                              top: 4,
                                                              right: 6,
                                                              bottom: 4),
                                                          onTap: () {
                                                            onTapImgF();
                                                          })
                                                    ]))),
                                            Padding(
                                                padding: getPadding(
                                                    left: 43,
                                                    top: 21,
                                                    bottom: 16),
                                                child: Text(
                                                    "msg_sign_in_with_fa".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRalewayRomanSemiBold16
                                                        .copyWith(
                                                            height:
                                                                getVerticalSize(
                                                                    1.28))))
                                          ])))
                            ]))))));
  }

  onTapButtonwithG() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapImgGoogle() async {
    var url = 'https://accounts.google.com/';
    if (!await launch(url)) {
      throw 'Could not launch https://accounts.google.com/';
    }
  }

  onTapButtonwithF() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapImgF() async {
    var url = 'https://www.facebook.com/login/';
    if (!await launch(url)) {
      throw 'Could not launch https://www.facebook.com/login/';
    }
  }
}
