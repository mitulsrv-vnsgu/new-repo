import '../pharmacy_screen/widgets/listcalciumllysin_item_widget.dart';
import '../pharmacy_screen/widgets/listef58faa9a71e47e_item_widget.dart';
import 'controller/pharmacy_controller.dart';
import 'models/listcalciumllysin_item_model.dart';
import 'models/listef58faa9a71e47e_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application39/core/app_export.dart';
import 'package:mitul_s_application39/widgets/app_bar/appbar_image.dart';
import 'package:mitul_s_application39/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:mitul_s_application39/widgets/app_bar/custom_app_bar.dart';
import 'package:mitul_s_application39/widgets/custom_button.dart';
import 'package:mitul_s_application39/widgets/custom_text_form_field.dart';

class PharmacyScreen extends GetWidget<PharmacyController> {
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
          title: AppbarSubtitle3(
            text: "lbl_pharmacy".tr,
          ),
          actions: [
            AppbarImage(
              height: getSize(
                24.00,
              ),
              width: getSize(
                24.00,
              ),
              svgPath: ImageConstant.imgIconlylightbu,
              margin: getMargin(
                left: 24,
                top: 9,
                right: 24,
                bottom: 15,
              ),
            ),
          ],
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
                    controller: controller.searchController,
                    hintText: "msg_search_drugs_c".tr,
                    margin: getMargin(
                      left: 21,
                      top: 16,
                      right: 21,
                    ),
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
                  Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: getMargin(
                      left: 21,
                      top: 24,
                      right: 19,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Container(
                      height: getVerticalSize(
                        135.00,
                      ),
                      width: getHorizontalSize(
                        335.00,
                      ),
                      decoration: AppDecoration.gradientBlue601Blue700.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgContractrqe1,
                            height: getVerticalSize(
                              135.00,
                            ),
                            width: getHorizontalSize(
                              195.00,
                            ),
                            radius: BorderRadius.circular(
                              getHorizontalSize(
                                10.00,
                              ),
                            ),
                            alignment: Alignment.centerRight,
                            margin: getMargin(
                              left: 10,
                            ),
                          ),
                          CustomButton(
                            height: 29,
                            width: 132,
                            text: "msg_upload_prescrip".tr,
                            margin: getMargin(
                              left: 25,
                              top: 20,
                              right: 25,
                              bottom: 20,
                            ),
                            variant: ButtonVariant.FillWhiteA700,
                            padding: ButtonPadding.PaddingAll6,
                            fontStyle: ButtonFontStyle.RalewayRomanSemiBold12,
                            alignment: Alignment.bottomLeft,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: getHorizontalSize(
                                155.00,
                              ),
                              margin: getMargin(
                                all: 26,
                              ),
                              child: Text(
                                "msg_order_quickly_w".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style:
                                    AppStyle.txtRalewayRomanSemiBold18.copyWith(
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
                      left: 21,
                      top: 24,
                      right: 19,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "lbl_popular_product".tr,
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
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: getVerticalSize(
                        180.00,
                      ),
                      child: Obx(
                        () => ListView.separated(
                          padding: getPadding(
                            left: 10,
                            top: 15,
                          ),
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: getVerticalSize(
                                21.00,
                              ),
                            );
                          },
                          itemCount: controller.pharmacyModelObj.value
                              .listef58faa9a71e47eItemList.length,
                          itemBuilder: (context, index) {
                            Listef58faa9a71e47eItemModel model = controller
                                .pharmacyModelObj
                                .value
                                .listef58faa9a71e47eItemList[index];
                            return Listef58faa9a71e47eItemWidget(
                              model,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 21,
                      top: 24,
                      right: 19,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "lbl_product_on_sale".tr,
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
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: getVerticalSize(
                        239.00,
                      ),
                      child: Obx(
                        () => ListView.separated(
                          padding: getPadding(
                            left: 10,
                            top: 15,
                            bottom: 59,
                          ),
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: getVerticalSize(
                                17.00,
                              ),
                            );
                          },
                          itemCount: controller.pharmacyModelObj.value
                              .listcalciumllysinItemList.length,
                          itemBuilder: (context, index) {
                            ListcalciumllysinItemModel model = controller
                                .pharmacyModelObj
                                .value
                                .listcalciumllysinItemList[index];
                            return ListcalciumllysinItemWidget(
                              model,
                            );
                          },
                        ),
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
