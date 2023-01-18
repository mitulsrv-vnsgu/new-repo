import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application38/core/app_export.dart';
import 'package:mitul_s_application38/widgets/custom_button.dart';
import 'package:mitul_s_application38/widgets/custom_text_form_field.dart';

class LoginScreen extends GetWidget<LoginController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.cyan300,
            body: Container(
                width: size.width,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgHidoclogo42x115,
                          height: getVerticalSize(42.00),
                          width: getHorizontalSize(115.00),
                          margin: getMargin(left: 15, top: 106, right: 15)),
                      Padding(
                          padding: getPadding(left: 15, top: 24, right: 15),
                          child: Text("msg_welcome_to_hidoc".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold16.copyWith(
                                  letterSpacing: getHorizontalSize(0.50),
                                  height: getVerticalSize(1.00)))),
                      Padding(
                          padding: getPadding(left: 15, top: 11, right: 15),
                          child: Text("msg_sign_in_to_continue".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular12.copyWith(
                                  letterSpacing: getHorizontalSize(0.50),
                                  height: getVerticalSize(1.20)))),
                      CustomTextFormField(
                          width: 343,
                          focusNode: FocusNode(),
                          controller: controller.emailFormController,
                          hintText: "lbl_your_email".tr,
                          margin: getMargin(left: 15, top: 28, right: 15),
                          textInputType: TextInputType.emailAddress,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 12, right: 10, bottom: 12),
                              child: CustomImageView(
                                  svgPath:
                                      ImageConstant.imgSystemIcon24pxMessage)),
                          prefixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(48.00))),
                      CustomTextFormField(
                          width: 343,
                          focusNode: FocusNode(),
                          controller: controller.passwordFormController,
                          hintText: "lbl_password".tr,
                          margin: getMargin(left: 15, top: 8, right: 15),
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 12, right: 10, bottom: 12),
                              child: CustomImageView(
                                  svgPath:
                                      ImageConstant.imgSystemIcon24pxPassword)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(48.00)),
                          isObscureText: true),
                      CustomButton(
                          height: 50,
                          width: 343,
                          text: "lbl_sign_in".tr,
                          margin: getMargin(left: 15, top: 27, right: 15),
                          variant: ButtonVariant.FillWhiteA700,
                          fontStyle: ButtonFontStyle.InterSemiBold14Teal300,
                          onTap: onTapSignin),
                      Padding(
                          padding: getPadding(left: 15, top: 23, right: 15),
                          child: Text("msg_forgot_password".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold12.copyWith(
                                  letterSpacing: getHorizontalSize(0.50),
                                  height: getVerticalSize(1.00)))),
                      Padding(
                          padding: getPadding(
                              left: 15, top: 237, right: 15, bottom: 5),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_don_t_have_an_account2".tr,
                                    style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(12),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: getHorizontalSize(0.50),
                                        height: getVerticalSize(1.00))),
                                TextSpan(
                                    text: " ",
                                    style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(12),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: getHorizontalSize(0.50),
                                        height: getVerticalSize(1.00))),
                                TextSpan(
                                    text: "lbl_register".tr,
                                    style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(12),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: getHorizontalSize(0.50),
                                        height: getVerticalSize(1.00)))
                              ]),
                              textAlign: TextAlign.left))
                    ]))));
  }

  onTapSignin() {
    Get.toNamed(AppRoutes.dashboardContainerScreen);
  }
}
