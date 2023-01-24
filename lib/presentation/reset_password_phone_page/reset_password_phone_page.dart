import 'controller/reset_password_phone_controller.dart';
import 'models/reset_password_phone_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application39/core/app_export.dart';
import 'package:mitul_s_application39/widgets/custom_button.dart';
import 'package:mitul_s_application39/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ResetPasswordPhonePage extends StatelessWidget {
  ResetPasswordPhoneController controller =
      Get.put(ResetPasswordPhoneController(ResetPasswordPhoneModel().obs));

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
                  controller: controller.inputController,
                  hintText: "lbl_085281882151".tr,
                  variant: TextFormFieldVariant.OutlineBlue600,
                  fontStyle: TextFormFieldFontStyle.RalewayRomanMedium16,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.phone,
                  prefix: Container(
                    margin: getMargin(
                      left: 24,
                      top: 16,
                      right: 16,
                      bottom: 16,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgIconCall,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
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
