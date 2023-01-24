import '../controller/find_doctors_controller.dart';
import '../models/find_doctors_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application39/core/app_export.dart';

// ignore: must_be_immutable
class FindDoctorsItemWidget extends StatelessWidget {
  FindDoctorsItemWidget(this.findDoctorsItemModelObj);

  FindDoctorsItemModel findDoctorsItemModelObj;

  var controller = Get.find<FindDoctorsController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          color: ColorConstant.blue51,
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
            decoration: AppDecoration.outlineBlack90019.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Stack(
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgIconcovid,
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
              left: 5,
              top: 11,
              right: 6,
            ),
            child: Text(
              "lbl_covid_19".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRalewayRomanRegular13.copyWith(
                height: getVerticalSize(
                  1.19,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
