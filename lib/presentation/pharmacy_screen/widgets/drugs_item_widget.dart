import 'package:flutter/material.dart';
import 'package:mitul_s_application38/core/app_export.dart';

// ignore: must_be_immutable
class DrugsItemWidget extends StatelessWidget {
  DrugsItemWidget({this.onTapDrugs});

  VoidCallback? onTapDrugs;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: GestureDetector(
          onTap: () {
            onTapDrugs!();
          },
          child: Container(
            margin: getMargin(
              right: 21,
            ),
            decoration: AppDecoration.outlineBluegray50.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder11,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgDrugthumbnail,
                  height: getSize(
                    50.00,
                  ),
                  width: getSize(
                    50.00,
                  ),
                  alignment: Alignment.center,
                  margin: getMargin(
                    left: 34,
                    top: 25,
                    right: 34,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 8,
                    top: 29,
                    right: 10,
                  ),
                  child: Text(
                    "Panadol",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterSemiBold12Black900.copyWith(
                      height: getVerticalSize(
                        1.00,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 8,
                    top: 1,
                    right: 10,
                  ),
                  child: Text(
                    "20pcs",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterMedium9.copyWith(
                      height: getVerticalSize(
                        1.00,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 8,
                      top: 5,
                      right: 7,
                      bottom: 9,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 1,
                          ),
                          child: Text(
                            "\$15.99",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterSemiBold14Black900.copyWith(
                              height: getVerticalSize(
                                1.00,
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgComponent2,
                          height: getSize(
                            18.00,
                          ),
                          width: getSize(
                            18.00,
                          ),
                          margin: getMargin(
                            bottom: 1,
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
    );
  }
}
