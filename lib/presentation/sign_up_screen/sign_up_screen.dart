import 'controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application39/core/app_export.dart';
import 'package:mitul_s_application39/widgets/app_bar/appbar_image.dart';
import 'package:mitul_s_application39/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:mitul_s_application39/widgets/app_bar/custom_app_bar.dart';
import 'package:mitul_s_application39/widgets/custom_button.dart';
import 'package:mitul_s_application39/widgets/custom_checkbox.dart';
import 'package:mitul_s_application39/widgets/custom_text_form_field.dart';

class SignUpScreen extends GetWidget<SignUpController> {
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
          title: AppbarSubtitle2(
            text: "lbl_sign_up".tr,
          ),
        ),
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
                    hintText: "lbl_enter_your_name".tr,
                    margin: getMargin(
                      left: 24,
                      top: 32,
                      right: 24,
                    ),
                    prefix: Container(
                      margin: getMargin(
                        left: 24,
                        top: 16,
                        right: 16,
                        bottom: 16,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgIconUseroutline,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(
                        56.00,
                      ),
                    ),
                  ),
                  CustomTextFormField(
                    width: 327,
                    focusNode: FocusNode(),
                    controller: controller.inputOneController,
                    hintText: "msg_enter_your_emai".tr,
                    margin: getMargin(
                      left: 24,
                      top: 16,
                      right: 24,
                    ),
                    textInputType: TextInputType.emailAddress,
                    prefix: Container(
                      margin: getMargin(
                        left: 24,
                        top: 16,
                        right: 16,
                        bottom: 16,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgIconEmail,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(
                        56.00,
                      ),
                    ),
                  ),
                  Obx(
                    () => CustomTextFormField(
                      width: 327,
                      focusNode: FocusNode(),
                      controller: controller.inputTwoController,
                      hintText: "msg_enter_your_pass".tr,
                      margin: getMargin(
                        left: 24,
                        top: 16,
                        right: 24,
                      ),
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.visiblePassword,
                      prefix: Container(
                        margin: getMargin(
                          left: 24,
                          top: 16,
                          right: 16,
                          bottom: 16,
                        ),
                        child: CustomImageView(
                          svgPath: ImageConstant.imgIconPassword,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        maxHeight: getVerticalSize(
                          56.00,
                        ),
                      ),
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
                            bottom: 16,
                          ),
                          child: CustomImageView(
                            svgPath: controller.isShowPassword.value
                                ? ImageConstant.imgIconEyeSlash
                                : ImageConstant.imgIconEyeSlash,
                          ),
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: getVerticalSize(
                          56.00,
                        ),
                      ),
                      isObscureText: !controller.isShowPassword.value,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Obx(
                      () => CustomCheckbox(
                        alignment: Alignment.centerLeft,
                        text: "msg_i_agree_to_the2".tr,
                        iconSize: 24,
                        value: controller.checkbox.value,
                        padding: getPadding(
                          left: 24,
                          top: 16,
                          right: 24,
                        ),
                        onChange: (value) {
                          controller.checkbox.value = value;
                        },
                      ),
                    ),
                  ),
                  CustomButton(
                    height: 56,
                    width: 327,
                    text: "lbl_sign_up".tr,
                    margin: getMargin(
                      left: 24,
                      top: 30,
                      right: 24,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 24,
                      top: 29,
                      right: 24,
                      bottom: 5,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_don_t_have_an_a2".tr,
                            style: TextStyle(
                              color: ColorConstant.gray600,
                              fontSize: getFontSize(
                                15,
                              ),
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w400,
                              letterSpacing: getHorizontalSize(
                                0.50,
                              ),
                              height: getVerticalSize(
                                1.26,
                              ),
                            ),
                          ),
                          TextSpan(
                            text: " ",
                            style: TextStyle(
                              color: ColorConstant.gray600,
                              fontSize: getFontSize(
                                15,
                              ),
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w400,
                              height: getVerticalSize(
                                1.08,
                              ),
                            ),
                          ),
                          TextSpan(
                            text: "lbl_sign_up".tr,
                            style: TextStyle(
                              color: ColorConstant.blue600,
                              fontSize: getFontSize(
                                15,
                              ),
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w500,
                              height: getVerticalSize(
                                1.26,
                              ),
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
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
