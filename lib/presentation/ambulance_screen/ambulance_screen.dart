import 'controller/ambulance_controller.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application38/core/app_export.dart';
import 'package:mitul_s_application38/widgets/app_bar/appbar_image.dart';
import 'package:mitul_s_application38/widgets/app_bar/appbar_subtitle.dart';
import 'package:mitul_s_application38/widgets/app_bar/custom_app_bar.dart';
import 'package:mitul_s_application38/widgets/custom_button.dart';
import 'package:mitul_s_application38/widgets/custom_text_form_field.dart';

class AmbulanceScreen extends GetWidget<AmbulanceController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: getVerticalSize(
            57.00,
          ),
          leadingWidth: 45,
          leading: AppbarImage(
            height: getVerticalSize(
              19.00,
            ),
            width: getHorizontalSize(
              24.00,
            ),
            svgPath: ImageConstant.imgArrowdownGray700,
            margin: getMargin(
              left: 21,
              top: 20,
              bottom: 17,
            ),
          ),
          centerTitle: true,
          title: AppbarSubtitle(
            text: "lbl_ambulance".tr,
          ),
          styleType: Style.bgFillWhiteA700,
        ),
        body: Container(
          height: getVerticalSize(
            710.00,
          ),
          width: size.width,
          margin: getMargin(
            bottom: 1,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgMapimage,
                height: getVerticalSize(
                  710.00,
                ),
                width: getHorizontalSize(
                  375.00,
                ),
                alignment: Alignment.centerLeft,
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    left: 10,
                    top: 11,
                    right: 10,
                    bottom: 23,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomTextFormField(
                        width: 355,
                        focusNode: FocusNode(),
                        controller: controller.searchController,
                        hintText: "msg_search_location".tr,
                        variant: TextFormFieldVariant.FillWhiteA700,
                        shape: TextFormFieldShape.RoundedBorder8,
                        padding: TextFormFieldPadding.PaddingAll10,
                        fontStyle: TextFormFieldFontStyle.InterRegular12,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.number,
                        prefix: Container(
                          margin: getMargin(
                            left: 18,
                            top: 11,
                            right: 12,
                            bottom: 11,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgIconlyLightoutlineSearch,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: getVerticalSize(
                            40.00,
                          ),
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgMappointsimag,
                        height: getVerticalSize(
                          331.00,
                        ),
                        width: getHorizontalSize(
                          355.00,
                        ),
                        margin: getMargin(
                          top: 68,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: getMargin(
                          top: 103,
                        ),
                        decoration: AppDecoration.fillWhiteA700.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder11,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: getPadding(
                                left: 10,
                                top: 21,
                                right: 10,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  CustomImageView(
                                    svgPath:
                                        ImageConstant.imgIconlyboldlocRed300,
                                    height: getVerticalSize(
                                      26.00,
                                    ),
                                    width: getHorizontalSize(
                                      28.00,
                                    ),
                                    margin: getMargin(
                                      top: 1,
                                      bottom: 5,
                                    ),
                                  ),
                                  Container(
                                    width: getHorizontalSize(
                                      255.00,
                                    ),
                                    margin: getMargin(
                                      left: 32,
                                    ),
                                    child: Text(
                                      "msg_2640_cabin_creek".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.center,
                                      style:
                                          AppStyle.txtInterRegular14.copyWith(
                                        height: getVerticalSize(
                                          1.12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CustomButton(
                              height: 50,
                              width: 335,
                              text: "msg_confirm_location".tr,
                              margin: getMargin(
                                left: 10,
                                top: 15,
                                right: 10,
                                bottom: 14,
                              ),
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
