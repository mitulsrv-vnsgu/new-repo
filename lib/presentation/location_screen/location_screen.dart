import 'controller/location_controller.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mitul_s_application39/core/app_export.dart';
import 'package:mitul_s_application39/widgets/app_bar/appbar_image.dart';
import 'package:mitul_s_application39/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:mitul_s_application39/widgets/app_bar/custom_app_bar.dart';
import 'package:mitul_s_application39/widgets/custom_button.dart';
import 'package:mitul_s_application39/widgets/custom_text_form_field.dart';

class LocationScreen extends GetWidget<LocationController> {
  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imageNotFound,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Container(
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: size.height,
                      width: size.width,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                            height: size.height,
                            width: size.width,
                            child: GoogleMap(
                              //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
                              mapType: MapType.normal,
                              initialCameraPosition: CameraPosition(
                                target: LatLng(
                                  37.43296265331129,
                                  -122.08832357078792,
                                ),
                                zoom: 14.4746,
                              ),
                              onMapCreated: (GoogleMapController controller) {
                                googleMapController.complete(controller);
                              },
                              zoomControlsEnabled: false,
                              zoomGesturesEnabled: false,
                              myLocationButtonEnabled: false,
                              myLocationEnabled: false,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: getPadding(
                                left: 10,
                                top: 27,
                                right: 10,
                                bottom: 27,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomTextFormField(
                                    width: 327,
                                    focusNode: FocusNode(),
                                    controller: controller.searchController,
                                    hintText: "msg_search_location".tr,
                                    margin: getMargin(
                                      left: 14,
                                      right: 14,
                                    ),
                                    variant:
                                        TextFormFieldVariant.OutlineGray200_1,
                                    padding: TextFormFieldPadding.PaddingAll13,
                                    fontStyle: TextFormFieldFontStyle
                                        .RalewayRomanRegular12,
                                    textInputAction: TextInputAction.done,
                                    textInputType: TextInputType.number,
                                    alignment: Alignment.center,
                                    prefix: Container(
                                      margin: getMargin(
                                        left: 16,
                                        top: 11,
                                        right: 8,
                                        bottom: 11,
                                      ),
                                      child: CustomImageView(
                                        svgPath: ImageConstant
                                            .imgIconlyLightoutlineSearch,
                                      ),
                                    ),
                                    prefixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(
                                        40.00,
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgGroup183,
                                    height: getVerticalSize(
                                      268.00,
                                    ),
                                    width: getHorizontalSize(
                                      285.00,
                                    ),
                                    margin: getMargin(
                                      left: 12,
                                      top: 69,
                                      right: 12,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      width: double.infinity,
                                      margin: getMargin(
                                        top: 102,
                                      ),
                                      decoration:
                                          AppDecoration.fillWhiteA700.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              left: 14,
                                              top: 14,
                                              right: 14,
                                            ),
                                            child: Text(
                                              "msg_confirm_your_ad".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRalewayRomanSemiBold14Gray901
                                                  .copyWith(
                                                height: getVerticalSize(
                                                  1.00,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                              height: getVerticalSize(
                                                1.00,
                                              ),
                                              width: getHorizontalSize(
                                                335.00,
                                              ),
                                              margin: getMargin(
                                                left: 10,
                                                top: 15,
                                                right: 10,
                                              ),
                                              decoration: BoxDecoration(
                                                color: ColorConstant.bluegray50,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                              padding: getPadding(
                                                left: 10,
                                                top: 15,
                                                right: 10,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgIconlyboldloc26x26,
                                                    height: getSize(
                                                      26.00,
                                                    ),
                                                    width: getSize(
                                                      26.00,
                                                    ),
                                                    margin: getMargin(
                                                      top: 6,
                                                      bottom: 6,
                                                    ),
                                                  ),
                                                  Container(
                                                    width: getHorizontalSize(
                                                      244.00,
                                                    ),
                                                    margin: getMargin(
                                                      left: 17,
                                                    ),
                                                    child: Text(
                                                      "msg_2640_cabin_cree".tr,
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRalewayRomanRegular14Gray700
                                                          .copyWith(
                                                        height: getVerticalSize(
                                                          1.16,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          CustomButton(
                                            height: 50,
                                            width: 327,
                                            text: "msg_confirm_locatio".tr,
                                            margin: getMargin(
                                              left: 10,
                                              top: 15,
                                              right: 10,
                                              bottom: 14,
                                            ),
                                            padding: ButtonPadding.PaddingAll19,
                                            alignment: Alignment.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: size.width,
                              margin: getMargin(
                                bottom: 10,
                              ),
                              decoration: AppDecoration.outlineBlack900191,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomAppBar(
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
                                      ),
                                    ),
                                    centerTitle: true,
                                    title: AppbarSubtitle2(
                                      text: "lbl_ambulance".tr,
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
