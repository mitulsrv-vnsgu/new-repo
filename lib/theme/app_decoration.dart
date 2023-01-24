import 'package:flutter/material.dart';
import 'package:mitul_s_application38/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fillGray400 => BoxDecoration(
        color: ColorConstant.gray400,
      );
  static BoxDecoration get gradientCyan300Teal400 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            -4.26325996727428e-9,
            0.47044334295936424,
          ),
          colors: [
            ColorConstant.cyan300,
            ColorConstant.teal400,
          ],
        ),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get outlineBluegray50 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.bluegray50,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get fillBluegray50 => BoxDecoration(
        color: ColorConstant.bluegray50,
      );
}

class BorderRadiusStyle {
  static BorderRadius customBorderTL30 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        30.00,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        30.00,
      ),
    ),
  );

  static BorderRadius circleBorder40 = BorderRadius.circular(
    getHorizontalSize(
      40.00,
    ),
  );

  static BorderRadius roundedBorder11 = BorderRadius.circular(
    getHorizontalSize(
      11.00,
    ),
  );

  static BorderRadius circleBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8.00,
    ),
  );
}
