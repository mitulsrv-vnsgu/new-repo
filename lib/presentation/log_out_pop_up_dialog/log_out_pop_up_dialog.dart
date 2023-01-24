import 'controller/log_out_pop_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application39/core/app_export.dart';
import 'package:mitul_s_application39/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class LogOutPopUpDialog extends StatelessWidget {
  LogOutPopUpDialog(this.controller);

  LogOutPopUpController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: getMargin(
              left: 32,
              top: 52,
              right: 32,
            ),
            color: ColorConstant.red50,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.circleBorder51,
            ),
            child: Container(
              height: getSize(
                103.00,
              ),
              width: getSize(
                103.00,
              ),
              decoration: AppDecoration.fillRed50.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder51,
              ),
              child: Stack(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgGroup109,
                    height: getSize(
                      58.00,
                    ),
                    width: getSize(
                      58.00,
                    ),
                    alignment: Alignment.center,
                    margin: getMargin(
                      left: 22,
                      top: 23,
                      right: 23,
                      bottom: 22,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: getHorizontalSize(
              246.00,
            ),
            margin: getMargin(
              left: 32,
              top: 53,
              right: 32,
            ),
            child: Text(
              "msg_are_you_sure_to".tr,
              maxLines: null,
              textAlign: TextAlign.center,
              style: AppStyle.txtInterBold20.copyWith(
                height: getVerticalSize(
                  1.03,
                ),
              ),
            ),
          ),
          CustomButton(
            height: 56,
            width: 263,
            text: "lbl_log_out".tr,
            margin: getMargin(
              left: 32,
              top: 32,
              right: 32,
            ),
            variant: ButtonVariant.FillRedA200,
          ),
          Padding(
            padding: getPadding(
              left: 32,
              top: 20,
              right: 32,
              bottom: 5,
            ),
            child: Text(
              "lbl_cancel".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterSemiBold16Blue600.copyWith(
                height: getVerticalSize(
                  1.24,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
