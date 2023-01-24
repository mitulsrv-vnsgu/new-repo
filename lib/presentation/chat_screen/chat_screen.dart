import 'package:flutter/material.dart';
import 'package:mitul_s_application38/core/app_export.dart';
import 'package:mitul_s_application38/widgets/app_bar/appbar_image.dart';
import 'package:mitul_s_application38/widgets/app_bar/appbar_subtitle.dart';
import 'package:mitul_s_application38/widgets/app_bar/custom_app_bar.dart';
import 'package:mitul_s_application38/widgets/custom_button.dart';
import 'package:mitul_s_application38/widgets/custom_text_form_field.dart';

class ChatScreen extends StatelessWidget {
  TextEditingController chatboxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: getVerticalSize(
            56.00,
          ),
          leadingWidth: 45,
          leading: AppbarImage(
            height: getSize(
              24.00,
            ),
            width: getSize(
              24.00,
            ),
            svgPath: ImageConstant.imgArrowdown,
            margin: getMargin(
              left: 21,
              top: 16,
              bottom: 16,
            ),
          ),
          centerTitle: true,
          title: Row(
            children: [
              AppbarSubtitle(
                text: "Dr. Marcus Horizon",
                margin: getMargin(
                  left: 18,
                  top: 16,
                  bottom: 19,
                ),
              ),
              AppbarImage(
                height: getSize(
                  20.00,
                ),
                width: getSize(
                  20.00,
                ),
                svgPath: ImageConstant.imgVideocamera,
                margin: getMargin(
                  left: 66,
                  top: 18,
                  bottom: 18,
                ),
              ),
            ],
          ),
          actions: [
            AppbarImage(
              height: getSize(
                20.00,
              ),
              width: getSize(
                20.00,
              ),
              svgPath: ImageConstant.imgPhone,
              margin: getMargin(
                left: 15,
                top: 18,
                bottom: 18,
              ),
            ),
            AppbarImage(
              height: getVerticalSize(
                16.00,
              ),
              width: getHorizontalSize(
                4.00,
              ),
              svgPath: ImageConstant.imgComponent1,
              margin: getMargin(
                all: 20,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: getPadding(
            left: 21,
            top: 24,
            right: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: AppDecoration.outlineBluegray50.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder11,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: getPadding(
                        left: 42,
                        top: 16,
                        right: 42,
                      ),
                      child: Text(
                        "Consultion Start",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterSemiBold16Cyan300.copyWith(
                          height: getVerticalSize(
                            1.00,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 42,
                        top: 6,
                        right: 42,
                        bottom: 16,
                      ),
                      child: Text(
                        "You can consult your problem to the doctor",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterMedium12.copyWith(
                          height: getVerticalSize(
                            1.00,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 20,
                  right: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse27image,
                      height: getSize(
                        40.00,
                      ),
                      width: getSize(
                        40.00,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 13,
                        top: 4,
                        bottom: 1,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Dr. Marcus Horizon",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterSemiBold14.copyWith(
                              height: getVerticalSize(
                                1.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 4,
                              right: 10,
                            ),
                            child: Text(
                              "10 min ago",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium10.copyWith(
                                height: getVerticalSize(
                                  1.00,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              CustomButton(
                height: 36,
                width: 205,
                text: "Hello, How can i help you?",
                margin: getMargin(
                  top: 10,
                  right: 10,
                ),
                variant: ButtonVariant.FillBluegray50,
                shape: ButtonShape.CustomBorderBL8,
                padding: ButtonPadding.PaddingAll6,
                fontStyle: ButtonFontStyle.InterRegular14,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: double.infinity,
                  margin: getMargin(
                    left: 10,
                    top: 15,
                  ),
                  decoration: AppDecoration.fillCyan300.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL8,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: getHorizontalSize(
                          205.00,
                        ),
                        margin: getMargin(
                          left: 14,
                          top: 15,
                          right: 14,
                          bottom: 13,
                        ),
                        child: Text(
                          "I have suffering from headache \nand cold for 3 days, I took 2 \ntablets of dolo, but still pain",
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterRegular14WhiteA700.copyWith(
                            height: getVerticalSize(
                              1.18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 15,
                  right: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse27image,
                      height: getSize(
                        40.00,
                      ),
                      width: getSize(
                        40.00,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 13,
                        top: 4,
                        bottom: 1,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Dr. Marcus Horizon",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterSemiBold14.copyWith(
                              height: getVerticalSize(
                                1.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 4,
                              right: 10,
                            ),
                            child: Text(
                              "5 min ago",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium10.copyWith(
                                height: getVerticalSize(
                                  1.00,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: getHorizontalSize(
                  221.00,
                ),
                margin: getMargin(
                  top: 10,
                  right: 10,
                ),
                decoration: AppDecoration.fillBluegray50.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderBL8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: getHorizontalSize(
                        193.00,
                      ),
                      margin: getMargin(
                        all: 13,
                      ),
                      child: Text(
                        "Ok, Do you have fever? is the\nheadchace severe",
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterRegular14.copyWith(
                          height: getVerticalSize(
                            1.18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: double.infinity,
                  margin: getMargin(
                    left: 10,
                    top: 15,
                  ),
                  decoration: AppDecoration.fillCyan300.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL8,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: getHorizontalSize(
                            162.00,
                          ),
                          margin: getMargin(
                            left: 14,
                            top: 13,
                            right: 14,
                            bottom: 11,
                          ),
                          child: Text(
                            "I don,t have any fever, \nbut headchace is painful",
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterRegular14WhiteA700.copyWith(
                              height: getVerticalSize(
                                1.18,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 15,
                  right: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse27image,
                      height: getSize(
                        40.00,
                      ),
                      width: getSize(
                        40.00,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 13,
                        top: 4,
                        bottom: 2,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Dr. Marcus Horizon",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterSemiBold14.copyWith(
                              height: getVerticalSize(
                                1.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 3,
                              right: 10,
                            ),
                            child: Text(
                              "Online",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium10.copyWith(
                                height: getVerticalSize(
                                  1.00,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: getMargin(
                  top: 10,
                  right: 10,
                ),
                color: ColorConstant.bluegray50,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(
                      getHorizontalSize(
                        5.00,
                      ),
                    ),
                    bottomLeft: Radius.circular(
                      getHorizontalSize(
                        5.00,
                      ),
                    ),
                    bottomRight: Radius.circular(
                      getHorizontalSize(
                        5.00,
                      ),
                    ),
                  ),
                ),
                child: Container(
                  height: getVerticalSize(
                    22.00,
                  ),
                  width: getHorizontalSize(
                    58.00,
                  ),
                  decoration: AppDecoration.fillBluegray50.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderBL5,
                  ),
                  child: Stack(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgGroup141,
                        height: getVerticalSize(
                          5.00,
                        ),
                        width: getHorizontalSize(
                          32.00,
                        ),
                        alignment: Alignment.bottomCenter,
                        margin: getMargin(
                          left: 13,
                          top: 10,
                          right: 13,
                          bottom: 8,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: getPadding(
            left: 21,
            top: 42,
            right: 20,
            bottom: 26,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              CustomTextFormField(
                width: 206,
                focusNode: FocusNode(),
                controller: chatboxController,
                hintText: "Type message ...",
                margin: getMargin(
                  bottom: 1,
                ),
                variant: TextFormFieldVariant.OutlineBluegray50_1,
                textInputAction: TextInputAction.done,
                prefix: Container(
                  margin: getMargin(
                    left: 10,
                    top: 11,
                    right: 8,
                    bottom: 10,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgAttachmentIcon,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    49.00,
                  ),
                ),
              ),
              CustomButton(
                height: 50,
                width: 111,
                text: "Send",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
