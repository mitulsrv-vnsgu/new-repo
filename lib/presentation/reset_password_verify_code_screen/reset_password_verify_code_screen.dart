import 'controller/reset_password_verify_code_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mitul_s_application39/core/app_export.dart';
import 'package:mitul_s_application39/widgets/custom_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ResetPasswordVerifyCodeScreen
    extends GetWidget<ResetPasswordVerifyCodeController> {
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
                      "msg_enter_verificat".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRalewayRomanBold24.copyWith(
                        height: getVerticalSize(
                          1.15,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      273.00,
                    ),
                    margin: getMargin(
                      left: 24,
                      top: 19,
                      right: 24,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_enter_code_that2".tr,
                            style: TextStyle(
                              color: ColorConstant.bluegray300,
                              fontSize: getFontSize(
                                16,
                              ),
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w500,
                              height: getVerticalSize(
                                1.26,
                              ),
                            ),
                          ),
                          TextSpan(
                            text: "lbl_08528188".tr,
                            style: TextStyle(
                              color: ColorConstant.gray900,
                              fontSize: getFontSize(
                                16,
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
                  Padding(
                    padding: getPadding(
                      left: 24,
                      top: 32,
                      right: 23,
                    ),
                    child: Obx(
                      () => PinCodeTextField(
                        appContext: context,
                        controller: controller.otpController.value,
                        length: 4,
                        obscureText: false,
                        obscuringCharacter: '*',
                        keyboardType: TextInputType.number,
                        autoDismissKeyboard: true,
                        enableActiveFill: true,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        onChanged: (value) {},
                        textStyle: TextStyle(
                          color: ColorConstant.gray900,
                          fontSize: getFontSize(
                            24,
                          ),
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          height: getVerticalSize(
                            1.15,
                          ),
                        ),
                        pinTheme: PinTheme(
                          fieldHeight: getHorizontalSize(
                            64.00,
                          ),
                          fieldWidth: getHorizontalSize(
                            64.00,
                          ),
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              16.00,
                            ),
                          ),
                          selectedFillColor: ColorConstant.whiteA700,
                          activeFillColor: ColorConstant.whiteA700,
                          inactiveFillColor: ColorConstant.whiteA700,
                          inactiveColor: ColorConstant.blue600,
                          selectedColor: ColorConstant.blue600,
                          activeColor: ColorConstant.blue600,
                        ),
                      ),
                    ),
                  ),
                  CustomButton(
                    height: 56,
                    width: 327,
                    text: "lbl_verify".tr,
                    margin: getMargin(
                      left: 24,
                      top: 40,
                      right: 24,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 24,
                        top: 28,
                        right: 24,
                        bottom: 5,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "msg_didn_t_receive2".tr,
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
                              text: "lbl_resend".tr,
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
