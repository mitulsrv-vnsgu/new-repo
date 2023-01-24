import '../profile_page/widgets/healthtracking_item_widget.dart';
import 'controller/profile_controller.dart';
import 'models/healthtracking_item_model.dart';
import 'models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application39/core/app_export.dart';
import 'package:mitul_s_application39/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {
  ProfileController controller = Get.put(ProfileController(ProfileModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: Colors.transparent,
            body: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(
                            3.3306690738754696e-16, 1.249000902703301e-16),
                        end: Alignment(0.999999956335844, 0.432881786555413),
                        colors: [
                      ColorConstant.blue601,
                      ColorConstant.blue700
                    ])),
                child: Container(
                    width: size.width,
                    decoration: AppDecoration.gradientBlue601Blue7001,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                              child: SingleChildScrollView(
                                  child: Container(
                                      width: size.width,
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgComponent1WhiteA700,
                                                height: getVerticalSize(16.00),
                                                width: getHorizontalSize(4.00),
                                                alignment:
                                                    Alignment.centerRight,
                                                margin: getMargin(
                                                    left: 20,
                                                    top: 25,
                                                    right: 20)),
                                            Container(
                                                height: getVerticalSize(82.00),
                                                width: getHorizontalSize(81.00),
                                                margin: getMargin(
                                                    left: 20,
                                                    top: 3,
                                                    right: 20),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgEllipse27,
                                                          height: getSize(
                                                              80.00),
                                                          width: getSize(80.00),
                                                          radius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      40.00)),
                                                          alignment:
                                                              Alignment.center,
                                                          margin: getMargin(
                                                              right: 1,
                                                              bottom: 2)),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          child:
                                                              GestureDetector(
                                                                  onTap: () {
                                                                    onTapStackcamera();
                                                                  },
                                                                  child: Card(
                                                                      clipBehavior:
                                                                          Clip
                                                                              .antiAlias,
                                                                      elevation:
                                                                          0,
                                                                      margin: getMargin(
                                                                          left:
                                                                              10,
                                                                          top:
                                                                              10),
                                                                      color: ColorConstant
                                                                          .whiteA700,
                                                                      shape: RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadiusStyle.roundedBorder11),
                                                                      child: Container(
                                                                          height: getSize(24.00),
                                                                          width: getSize(24.00),
                                                                          decoration: AppDecoration.fillWhiteA700.copyWith(borderRadius: BorderRadiusStyle.roundedBorder11),
                                                                          child: Stack(children: [
                                                                            CustomImageView(
                                                                                svgPath: ImageConstant.imgCamera,
                                                                                height: getSize(15.00),
                                                                                width: getSize(15.00),
                                                                                alignment: Alignment.center,
                                                                                margin: getMargin(all: 4))
                                                                          ])))))
                                                    ])),
                                            Padding(
                                                padding: getPadding(
                                                    left: 20,
                                                    top: 17,
                                                    right: 20),
                                                child: Text(
                                                    "lbl_amelia_renata".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRalewayRomanSemiBold18
                                                        .copyWith(
                                                            height:
                                                                getVerticalSize(
                                                                    1.00)))),
                                            Container(
                                                height: getVerticalSize(102.00),
                                                child: Obx(() =>
                                                    ListView.builder(
                                                        padding: getPadding(
                                                            left: 20,
                                                            top: 31,
                                                            right: 20),
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        physics:
                                                            BouncingScrollPhysics(),
                                                        itemCount: controller
                                                            .profileModelObj
                                                            .value
                                                            .healthtrackingItemList
                                                            .length,
                                                        itemBuilder:
                                                            (context, index) {
                                                          HealthtrackingItemModel
                                                              model = controller
                                                                  .profileModelObj
                                                                  .value
                                                                  .healthtrackingItemList[index];
                                                          return HealthtrackingItemWidget(
                                                              model);
                                                        }))),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                    width: double.infinity,
                                                    margin: getMargin(top: 43),
                                                    decoration: AppDecoration
                                                        .fillWhiteA700
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .customBorderTL30),
                                                    child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 31,
                                                                      right:
                                                                          20),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Row(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .center,
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          CustomIconButton(
                                                                              height: 43,
                                                                              width: 43,
                                                                              child: CustomImageView(svgPath: ImageConstant.imgGroup49)),
                                                                          Padding(
                                                                              padding: getPadding(left: 18, top: 12, bottom: 12),
                                                                              child: Text("lbl_my_saved".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRalewayRomanSemiBold16Gray901.copyWith(height: getVerticalSize(1.00))))
                                                                        ]),
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgArrowright,
                                                                        height: getSize(
                                                                            24.00),
                                                                        width: getSize(
                                                                            24.00),
                                                                        margin: getMargin(
                                                                            top:
                                                                                10,
                                                                            bottom:
                                                                                9))
                                                                  ])),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      335.00),
                                                              margin: getMargin(
                                                                  left: 20,
                                                                  top: 13,
                                                                  right: 20),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color: ColorConstant
                                                                          .bluegray50)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 13,
                                                                      right:
                                                                          20),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Row(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .center,
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          CustomIconButton(
                                                                              height: 43,
                                                                              width: 43,
                                                                              child: CustomImageView(svgPath: ImageConstant.imgGroup106)),
                                                                          Padding(
                                                                              padding: getPadding(left: 18, top: 12, bottom: 12),
                                                                              child: Text("lbl_appointmnet".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRalewayRomanSemiBold16Gray901.copyWith(height: getVerticalSize(1.00))))
                                                                        ]),
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgArrowright,
                                                                        height: getSize(
                                                                            24.00),
                                                                        width: getSize(
                                                                            24.00),
                                                                        margin: getMargin(
                                                                            top:
                                                                                10,
                                                                            bottom:
                                                                                9))
                                                                  ])),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      335.00),
                                                              margin: getMargin(
                                                                  left: 20,
                                                                  top: 13,
                                                                  right: 20),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color: ColorConstant
                                                                          .bluegray50)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 13,
                                                                      right:
                                                                          20),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Row(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .center,
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          CustomIconButton(
                                                                              height: 43,
                                                                              width: 43,
                                                                              child: CustomImageView(svgPath: ImageConstant.imgGroup107)),
                                                                          Padding(
                                                                              padding: getPadding(left: 18, top: 12, bottom: 12),
                                                                              child: Text("lbl_payment_method".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRalewayRomanSemiBold16Gray901.copyWith(height: getVerticalSize(1.00))))
                                                                        ]),
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgArrowright,
                                                                        height: getSize(
                                                                            24.00),
                                                                        width: getSize(
                                                                            24.00),
                                                                        margin: getMargin(
                                                                            top:
                                                                                9,
                                                                            bottom:
                                                                                10))
                                                                  ])),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      335.00),
                                                              margin: getMargin(
                                                                  left: 20,
                                                                  top: 13,
                                                                  right: 20),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color: ColorConstant
                                                                          .bluegray50)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 13,
                                                                      right:
                                                                          20),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Row(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .center,
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          CustomIconButton(
                                                                              height: 43,
                                                                              width: 43,
                                                                              child: CustomImageView(svgPath: ImageConstant.imgGroup108)),
                                                                          Padding(
                                                                              padding: getPadding(left: 18, top: 12, bottom: 12),
                                                                              child: Text("lbl_faqs".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRalewayRomanSemiBold16Gray901.copyWith(height: getVerticalSize(1.00))))
                                                                        ]),
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgArrowright,
                                                                        height: getSize(
                                                                            24.00),
                                                                        width: getSize(
                                                                            24.00),
                                                                        margin: getMargin(
                                                                            top:
                                                                                10,
                                                                            bottom:
                                                                                9))
                                                                  ])),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      335.00),
                                                              margin: getMargin(
                                                                  left: 20,
                                                                  top: 13,
                                                                  right: 20),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color: ColorConstant
                                                                          .bluegray50)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 13,
                                                                      right: 20,
                                                                      bottom:
                                                                          105),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Row(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .center,
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          CustomIconButton(
                                                                              height: 43,
                                                                              width: 43,
                                                                              variant: IconButtonVariant.FillRed50,
                                                                              child: CustomImageView(svgPath: ImageConstant.imgGroup109)),
                                                                          Padding(
                                                                              padding: getPadding(left: 18, top: 12, bottom: 12),
                                                                              child: Text("lbl_logout2".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRalewayRomanSemiBold16RedA200.copyWith(height: getVerticalSize(1.00))))
                                                                        ]),
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgArrowright,
                                                                        height: getSize(
                                                                            24.00),
                                                                        width: getSize(
                                                                            24.00),
                                                                        margin: getMargin(
                                                                            top:
                                                                                10,
                                                                            bottom:
                                                                                9))
                                                                  ]))
                                                        ])))
                                          ]))))
                        ])))));
  }

  onTapStackcamera() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }
}
