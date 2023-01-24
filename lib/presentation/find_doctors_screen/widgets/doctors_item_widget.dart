import '../controller/find_doctors_controller.dart';
import '../models/doctors_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application39/core/app_export.dart';

// ignore: must_be_immutable
class DoctorsItemWidget extends StatelessWidget {
  DoctorsItemWidget(this.doctorsItemModelObj);

  DoctorsItemModel doctorsItemModelObj;

  var controller = Get.find<FindDoctorsController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Padding(
        padding: getPadding(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse88,
              height: getSize(
                64.00,
              ),
              width: getSize(
                64.00,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  32.00,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 1,
                  top: 10,
                ),
                child: Text(
                  "lbl_dr_marcus".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRalewayRomanMedium13.copyWith(
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
    );
  }
}
