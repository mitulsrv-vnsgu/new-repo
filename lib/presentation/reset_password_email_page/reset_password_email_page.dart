import 'controller/reset_password_email_controller.dart';
import 'models/reset_password_email_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application39/core/app_export.dart';
import 'package:mitul_s_application39/widgets/custom_button.dart';
import 'package:mitul_s_application39/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ResetPasswordEmailPage extends StatelessWidget {
  ResetPasswordEmailController controller =
      Get.put(ResetPasswordEmailController(ResetPasswordEmailModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomTextFormField(
                  width: 327,
                  focusNode: FocusNode(),
                  controller: controller.emailController,
                  hintText: "msg_jamesschleifer".tr,
                  variant: TextFormFieldVariant.OutlineBlue600,
                  fontStyle: TextFormFieldFontStyle.RalewayRomanMedium16,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.emailAddress,
                  prefix: Container(
                    margin: getMargin(
                      left: 24,
                      top: 16,
                      right: 14,
                      bottom: 16,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgIconEmail24x24,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: getVerticalSize(
                      56.00,
                    ),
                  ),
                  suffix: Container(
                    margin: getMargin(
                      left: 22,
                      top: 20,
                      right: 24,
                      bottom: 20,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgIconCheck,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: getVerticalSize(
                      56.00,
                    ),
                  ),
                ),
                CustomButton(
                  height: 56,
                  width: 327,
                  text: "lbl_reset_password".tr,
                  margin: getMargin(
                    top: 32,
                  ),
                  padding: ButtonPadding.PaddingAll19,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
