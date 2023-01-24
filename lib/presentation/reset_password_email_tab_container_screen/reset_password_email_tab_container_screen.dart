import 'controller/reset_password_email_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application39/core/app_export.dart';
import 'package:mitul_s_application39/presentation/reset_password_email_page/reset_password_email_page.dart';
import 'package:mitul_s_application39/presentation/reset_password_phone_page/reset_password_phone_page.dart';

class ResetPasswordEmailTabContainerScreen
    extends GetWidget<ResetPasswordEmailTabContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
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
                  alignment: Alignment.centerLeft,
                  margin: getMargin(
                    left: 24,
                    right: 24,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 24,
                      top: 40,
                      right: 24,
                    ),
                    child: Text(
                      "msg_forgot_your_pas".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRalewayRomanBold24.copyWith(
                        height: getVerticalSize(
                          1.15,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    319.00,
                  ),
                  margin: getMargin(
                    left: 24,
                    top: 14,
                    right: 24,
                  ),
                  child: Text(
                    "msg_enter_your_emai2".tr,
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRalewayRomanMedium16Bluegray300.copyWith(
                      height: getVerticalSize(
                        1.28,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    327.00,
                  ),
                  margin: getMargin(
                    left: 24,
                    top: 24,
                    right: 24,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.gray100,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        12.00,
                      ),
                    ),
                  ),
                  child: TabBar(
                    controller: controller.tabController,
                    tabs: [
                      Tab(
                        text: "lbl_email".tr,
                      ),
                      Tab(
                        text: "lbl_phone".tr,
                      ),
                    ],
                    labelColor: ColorConstant.blue600,
                    unselectedLabelColor: ColorConstant.bluegray400,
                    indicator: BoxDecoration(
                      color: ColorConstant.whiteA700,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          8.00,
                        ),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: ColorConstant.black9000c,
                          spreadRadius: getHorizontalSize(
                            2.00,
                          ),
                          blurRadius: getHorizontalSize(
                            2.00,
                          ),
                          offset: Offset(
                            0,
                            0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: getMargin(
                    left: 24,
                    top: 24,
                    right: 24,
                    bottom: 5,
                  ),
                  height: getVerticalSize(
                    144.00,
                  ),
                  child: TabBarView(
                    controller: controller.tabController,
                    children: [
                      ResetPasswordEmailPage(),
                      ResetPasswordPhonePage(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
