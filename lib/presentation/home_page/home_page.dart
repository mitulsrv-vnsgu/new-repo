import '../home_page/widgets/home_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_item_model.dart';
import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application39/core/app_export.dart';
import 'package:mitul_s_application39/widgets/app_bar/appbar_image.dart';
import 'package:mitul_s_application39/widgets/app_bar/custom_app_bar.dart';
import 'package:mitul_s_application39/widgets/custom_button.dart';
import 'package:mitul_s_application39/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA701,
        appBar: CustomAppBar(
          height: getVerticalSize(
            56.00,
          ),
          title: Container(
            width: getHorizontalSize(
              166.00,
            ),
            margin: getMargin(
              left: 24,
            ),
            child: Text(
              "msg_find_your_desir".tr,
              maxLines: null,
              textAlign: TextAlign.left,
              style: AppStyle.txtRalewayRomanSemiBold22.copyWith(
                height: getVerticalSize(
                  1.24,
                ),
              ),
            ),
          ),
          actions: [
            AppbarImage(
              height: getSize(
                24.00,
              ),
              width: getSize(
                24.00,
              ),
              svgPath: ImageConstant.imgIconlylightno,
              margin: getMargin(
                left: 24,
                top: 3,
                right: 24,
                bottom: 28,
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: getPadding(
                left: 24,
                top: 23,
                right: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomTextFormField(
                    width: 327,
                    focusNode: FocusNode(),
                    controller: controller.searchController,
                    hintText: "msg_search_doctor".tr,
                    variant: TextFormFieldVariant.OutlineGray200_1,
                    padding: TextFormFieldPadding.PaddingAll13,
                    fontStyle: TextFormFieldFontStyle.RalewayRomanRegular12,
                    textInputAction: TextInputAction.done,
                    prefix: Container(
                      margin: getMargin(
                        left: 16,
                        top: 11,
                        right: 8,
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
                  Padding(
                    padding: getPadding(
                      top: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            bottom: 2,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin: EdgeInsets.all(0),
                                  color: ColorConstant.blue50,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder8,
                                  ),
                                  child: Container(
                                    height: getVerticalSize(
                                      56.00,
                                    ),
                                    width: getHorizontalSize(
                                      64.00,
                                    ),
                                    decoration:
                                        AppDecoration.fillBlue50.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder8,
                                    ),
                                    child: Stack(
                                      children: [
                                        CustomImageView(
                                          svgPath: ImageConstant.imgIcondoctor,
                                          height: getSize(
                                            32.00,
                                          ),
                                          width: getSize(
                                            32.00,
                                          ),
                                          alignment: Alignment.center,
                                          margin: getMargin(
                                            left: 16,
                                            top: 12,
                                            right: 16,
                                            bottom: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 9,
                                  top: 11,
                                  right: 10,
                                ),
                                child: Text(
                                  "lbl_doctor".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtRalewayRomanMedium14Bluegray300
                                      .copyWith(
                                    height: getVerticalSize(
                                      1.19,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                margin: getMargin(
                                  left: 1,
                                  right: 1,
                                ),
                                color: ColorConstant.blue50,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8,
                                ),
                                child: Container(
                                  height: getVerticalSize(
                                    56.00,
                                  ),
                                  width: getHorizontalSize(
                                    64.00,
                                  ),
                                  decoration: AppDecoration.fillBlue50.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder8,
                                  ),
                                  child: Stack(
                                    children: [
                                      CustomImageView(
                                        svgPath: ImageConstant.imgIconpharmacy,
                                        height: getSize(
                                          32.00,
                                        ),
                                        width: getSize(
                                          32.00,
                                        ),
                                        alignment: Alignment.center,
                                        margin: getMargin(
                                          left: 16,
                                          top: 12,
                                          right: 16,
                                          bottom: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 12,
                              ),
                              child: Text(
                                "lbl_pharmacy".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle
                                    .txtRalewayRomanMedium14Bluegray300
                                    .copyWith(
                                  height: getVerticalSize(
                                    1.19,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: EdgeInsets.all(0),
                              color: ColorConstant.blue50,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusStyle.roundedBorder8,
                              ),
                              child: Container(
                                height: getVerticalSize(
                                  56.00,
                                ),
                                width: getHorizontalSize(
                                  64.00,
                                ),
                                decoration: AppDecoration.fillBlue50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8,
                                ),
                                child: Stack(
                                  children: [
                                    CustomImageView(
                                      svgPath: ImageConstant.imgIconhospital,
                                      height: getSize(
                                        32.00,
                                      ),
                                      width: getSize(
                                        32.00,
                                      ),
                                      alignment: Alignment.center,
                                      margin: getMargin(
                                        left: 16,
                                        top: 12,
                                        right: 16,
                                        bottom: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: getPadding(
                                  left: 4,
                                  top: 12,
                                  right: 5,
                                ),
                                child: Text(
                                  "lbl_hospital".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtRalewayRomanMedium14Bluegray300
                                      .copyWith(
                                    height: getVerticalSize(
                                      1.19,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: getPadding(
                            bottom: 3,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                margin: getMargin(
                                  left: 6,
                                  right: 6,
                                ),
                                color: ColorConstant.blue50,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8,
                                ),
                                child: Container(
                                  height: getVerticalSize(
                                    56.00,
                                  ),
                                  width: getHorizontalSize(
                                    64.00,
                                  ),
                                  decoration: AppDecoration.fillBlue50.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder8,
                                  ),
                                  child: Stack(
                                    children: [
                                      CustomImageView(
                                        svgPath: ImageConstant.imgIconambulanc,
                                        height: getSize(
                                          32.00,
                                        ),
                                        width: getSize(
                                          32.00,
                                        ),
                                        alignment: Alignment.center,
                                        margin: getMargin(
                                          left: 16,
                                          top: 12,
                                          right: 16,
                                          bottom: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: getPadding(
                                    top: 10,
                                  ),
                                  child: Text(
                                    "lbl_ambulance".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRalewayRomanMedium14Bluegray300
                                        .copyWith(
                                      height: getVerticalSize(
                                        1.19,
                                      ),
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
                    margin: getMargin(
                      top: 15,
                    ),
                    decoration: AppDecoration.gradientBlue601Blue700.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 14,
                            top: 23,
                            bottom: 21,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: getHorizontalSize(
                                  164.00,
                                ),
                                child: Text(
                                  "msg_early_protectio".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRalewayRomanSemiBold18
                                      .copyWith(
                                    height: getVerticalSize(
                                      1.18,
                                    ),
                                  ),
                                ),
                              ),
                              CustomButton(
                                height: 30,
                                width: 98,
                                text: "lbl_learn_more".tr,
                                margin: getMargin(
                                  top: 16,
                                  right: 10,
                                ),
                                variant: ButtonVariant.FillWhiteA700,
                                padding: ButtonPadding.PaddingAll6,
                                fontStyle:
                                    ButtonFontStyle.RalewayRomanSemiBold12,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            130.00,
                          ),
                          width: getHorizontalSize(
                            113.00,
                          ),
                          margin: getMargin(
                            top: 5,
                            right: 3,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  height: getSize(
                                    113.00,
                                  ),
                                  width: getSize(
                                    113.00,
                                  ),
                                  margin: getMargin(
                                    top: 10,
                                    bottom: 1,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        56.50,
                                      ),
                                    ),
                                    border: Border.all(
                                      color: ColorConstant.whiteA70087,
                                      width: getHorizontalSize(
                                        18.00,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.img7xm6,
                                height: getVerticalSize(
                                  130.00,
                                ),
                                width: getHorizontalSize(
                                  91.00,
                                ),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(
                                    10.00,
                                  ),
                                ),
                                alignment: Alignment.center,
                                margin: getMargin(
                                  left: 12,
                                  right: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 24,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "lbl_top_doctor".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRalewayRomanSemiBold16Gray901
                              .copyWith(
                            height: getVerticalSize(
                              1.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 2,
                            bottom: 1,
                          ),
                          child: Text(
                            "lbl_see_all".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRalewayRomanMedium14.copyWith(
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
                      top: 15,
                    ),
                    child: Obx(
                      () => GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: getVerticalSize(
                            191.00,
                          ),
                          crossAxisCount: 2,
                          mainAxisSpacing: getHorizontalSize(
                            17.00,
                          ),
                          crossAxisSpacing: getHorizontalSize(
                            17.00,
                          ),
                        ),
                        physics: NeverScrollableScrollPhysics(),
                        itemCount:
                            controller.homeModelObj.value.homeItemList.length,
                        itemBuilder: (context, index) {
                          HomeItemModel model =
                              controller.homeModelObj.value.homeItemList[index];
                          return HomeItemWidget(
                            model,
                          );
                        },
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
