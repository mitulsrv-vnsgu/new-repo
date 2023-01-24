import 'controller/create_new_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application39/core/app_export.dart';
import 'package:mitul_s_application39/widgets/custom_button.dart';
import 'package:mitul_s_application39/widgets/custom_text_form_field.dart';

class CreateNewPasswordScreen extends GetWidget<CreateNewPasswordController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgButton,
                    height: getSize(
                      40.00,
                    ),
                    width: getSize(
                      40.00,
                    ),
                    margin: getMargin(
                      left: 24,
                      right: 24,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 24,
                      top: 40,
                      right: 24,
                    ),
                    child: Text(
                      "msg_create_new_pass".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRalewayRomanBold24.copyWith(
                        height: getVerticalSize(
                          1.15,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 24,
                      top: 18,
                      right: 24,
                    ),
                    child: Text(
                      "msg_create_your_new".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRalewayRomanRegular16.copyWith(
                        height: getVerticalSize(
                          1.28,
                        ),
                      ),
                    ),
                  ),
                  CustomTextFormField(
                    width: 327,
                    focusNode: FocusNode(),
                    controller: controller.inputController,
                    hintText: "msg_enter_new_passw".tr,
                    margin: getMargin(
                      left: 24,
                      top: 24,
                      right: 24,
                    ),
                    textInputType: TextInputType.visiblePassword,
                    alignment: Alignment.center,
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
                    suffix: Container(
                      margin: getMargin(
                        left: 30,
                        top: 16,
                        right: 24,
                        bottom: 16,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgIconEyeSlash,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(
                        56.00,
                      ),
                    ),
                  ),
                  Obx(
                    () => CustomTextFormField(
                      width: 327,
                      focusNode: FocusNode(),
                      controller: controller.inputOneController,
                      hintText: "msg_confirm_passwor".tr,
                      margin: getMargin(
                        left: 24,
                        top: 16,
                        right: 24,
                      ),
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.visiblePassword,
                      alignment: Alignment.center,
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
                  CustomButton(
                    height: 56,
                    width: 327,
                    text: "lbl_create_password".tr,
                    margin: getMargin(
                      left: 24,
                      top: 24,
                      right: 24,
                      bottom: 5,
                    ),
                    padding: ButtonPadding.PaddingAll19,
                    alignment: Alignment.center,
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
