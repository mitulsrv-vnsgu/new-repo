import '../controller/doctor_detail_controller.dart';
import '../models/doctor_detail_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application39/core/app_export.dart';

// ignore: must_be_immutable
class DoctorDetailItemWidget extends StatelessWidget {
  DoctorDetailItemWidget(this.doctorDetailItemModelObj);

  DoctorDetailItemModel doctorDetailItemModelObj;

  var controller = Get.find<DoctorDetailController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          padding: getPadding(
            left: 25,
            top: 11,
            right: 25,
            bottom: 11,
          ),
          decoration: AppDecoration.txtOutlineGray101.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder15,
          ),
          child: Text(
            "lbl_09_00_am".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtRalewayRomanRegular12.copyWith(
              height: getVerticalSize(
                1.00,
              ),
            ),
          ),
        ),
        Container(
          margin: getMargin(
            left: 9,
          ),
          padding: getPadding(
            left: 25,
            top: 11,
            right: 25,
            bottom: 11,
          ),
          decoration: AppDecoration.txtOutlineBluegray101.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder15,
          ),
          child: Text(
            "lbl_10_00_am".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtRalewayRomanRegular12Gray901.copyWith(
              height: getVerticalSize(
                1.00,
              ),
            ),
          ),
        ),
        Container(
          margin: getMargin(
            left: 9,
          ),
          padding: getPadding(
            left: 27,
            top: 11,
            right: 27,
            bottom: 11,
          ),
          decoration: AppDecoration.txtOutlineGray101.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder15,
          ),
          child: Text(
            "lbl_11_00_am".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtRalewayRomanRegular12.copyWith(
              height: getVerticalSize(
                1.00,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
