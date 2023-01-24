import '../pharmacy_screen/widgets/drugs1_item_widget.dart';
import '../pharmacy_screen/widgets/drugs_item_widget.dart';
import 'controller/pharmacy_controller.dart';
import 'models/drugs1_item_model.dart';
import 'models/drugs_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application38/core/app_export.dart';
import 'package:mitul_s_application38/widgets/app_bar/appbar_image.dart';
import 'package:mitul_s_application38/widgets/app_bar/appbar_subtitle.dart';
import 'package:mitul_s_application38/widgets/app_bar/custom_app_bar.dart';
import 'package:mitul_s_application38/widgets/custom_button.dart';
import 'package:mitul_s_application38/widgets/custom_text_form_field.dart';

class PharmacyScreen extends GetWidget<PharmacyController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 45,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowdown,
                    margin: getMargin(left: 21, top: 16, bottom: 16)),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_pharmacy".tr),
                actions: [
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      svgPath: ImageConstant.imgIconlylightbu,
                      margin:
                          getMargin(left: 20, top: 16, right: 20, bottom: 16))
                ]),
            body: Container(
                width: size.width,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomTextFormField(
                          width: 335,
                          focusNode: FocusNode(),
                          controller: controller.searchController,
                          hintText: "msg_search_drugs_category".tr,
                          margin: getMargin(left: 20, top: 23, right: 20),
                          variant: TextFormFieldVariant.OutlineBluegray50,
                          shape: TextFormFieldShape.RoundedBorder8,
                          padding: TextFormFieldPadding.PaddingAll10,
                          fontStyle: TextFormFieldFontStyle.InterRegular12,
                          textInputAction: TextInputAction.done,
                          prefix: Container(
                              margin: getMargin(
                                  left: 17, top: 11, right: 12, bottom: 11),
                              child: CustomImageView(
                                  svgPath: ImageConstant
                                      .imgIconlyLightoutlineSearch)),
                          prefixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(40.00))),
                      Container(
                          width: double.infinity,
                          margin: getMargin(left: 20, top: 25, right: 19),
                          decoration: AppDecoration.fillBluegray50.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder8),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: getHorizontalSize(176.00),
                                    margin:
                                        getMargin(left: 17, top: 20, right: 17),
                                    child: Text("msg_order_quickly_w".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterSemiBold20
                                            .copyWith(
                                                height:
                                                    getVerticalSize(1.03)))),
                                CustomButton(
                                    height: 30,
                                    width: 150,
                                    text: "msg_upload_prescription".tr,
                                    margin: getMargin(
                                        left: 16,
                                        top: 7,
                                        right: 16,
                                        bottom: 12),
                                    padding: ButtonPadding.PaddingAll6)
                              ])),
                      Padding(
                          padding: getPadding(left: 20, top: 49, right: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text("lbl_popular_product".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterSemiBold16Black900
                                        .copyWith(
                                            height: getVerticalSize(1.00))),
                                Padding(
                                    padding: getPadding(top: 1, bottom: 3),
                                    child: Text("lbl_see_all".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular12
                                            .copyWith(
                                                height: getVerticalSize(1.00))))
                              ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(191.00),
                              child: Obx(() => ListView.separated(
                                  padding: getPadding(left: 10, top: 26),
                                  scrollDirection: Axis.horizontal,
                                  physics: BouncingScrollPhysics(),
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(21.00));
                                  },
                                  itemCount: controller.pharmacyModelObj.value
                                      .drugsItemList.length,
                                  itemBuilder: (context, index) {
                                    DrugsItemModel model = controller
                                        .pharmacyModelObj
                                        .value
                                        .drugsItemList[index];
                                    return DrugsItemWidget(model,
                                        onTapDrugs: onTapDrugs);
                                  })))),
                      Padding(
                          padding: getPadding(left: 20, top: 19, right: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text("lbl_product_on_sale".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterSemiBold16Black900
                                        .copyWith(
                                            height: getVerticalSize(1.00))),
                                Padding(
                                    padding: getPadding(top: 2, bottom: 2),
                                    child: Text("lbl_see_all".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular12
                                            .copyWith(
                                                height: getVerticalSize(1.00))))
                              ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(197.00),
                              child: Obx(() => ListView.separated(
                                  padding:
                                      getPadding(left: 10, top: 14, bottom: 18),
                                  scrollDirection: Axis.horizontal,
                                  physics: BouncingScrollPhysics(),
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(17.17));
                                  },
                                  itemCount: controller.pharmacyModelObj.value
                                      .drugs1ItemList.length,
                                  itemBuilder: (context, index) {
                                    Drugs1ItemModel model = controller
                                        .pharmacyModelObj
                                        .value
                                        .drugs1ItemList[index];
                                    return Drugs1ItemWidget(model);
                                  }))))
                    ]))));
  }

  onTapDrugs() {
    Get.toNamed(AppRoutes.drugDetailsScreen);
  }
}
