import 'dart:developer';
import 'package:flutter/widgets.dart';
import '../../constants.dart';

abstract class AppStyles {
  static TextStyle textStyle18(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, baseFontSize: 18),
        fontWeight: FontWeight.w600,
      );
  static TextStyle textStyle20(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, baseFontSize: 20),
        fontWeight: FontWeight.normal,
      );
  static TextStyle textStyle30(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, baseFontSize: 30),
        fontWeight: FontWeight.w900,
        fontFamily: kGtSectraFine,
        letterSpacing: 1.2,
      );
  static TextStyle textStyle14(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, baseFontSize: 14),
        fontWeight: FontWeight.normal,
      );

  static TextStyle textStyle16(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, baseFontSize: 16),
        fontWeight: FontWeight.w500,
      );
}

//1.Scale Factor =  width / plateform_width_break_point
// if plateform_width_break_point. is Mobile i choose break point to determine width is incressing or decreasing
// if width is increase the font size decrease
// if  mobile < 800  -> 500
// if 600 <= tablet < 900 -> 700
// if 900 <= desktop -> 1000
//2. Responsive font size = basefontSize * Scale Factor
//3. (min , max) fontsize
double getResponsiveFontSize(
  BuildContext context, {
  required double baseFontSize,
}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = baseFontSize * scaleFactor;
  double lowerLimit = baseFontSize * .8;
  double upperLimit = baseFontSize * 1.2;
  log("fontsize $baseFontSize scaleFactor $scaleFactor LowerLimit $lowerLimit upperLimit $upperLimit ,responsiveFontSize $responsiveFontSize ");
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

// if you use tablet or mobil you can use PlatformDispatcher
// if web you must use MediaQuery as user can change the width

double getScaleFactor(BuildContext context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // var width = physicalWidth / devicePixelRatio;
  double width = MediaQuery.sizeOf(context).width;
  log("Current Width $width");
  if (width < 800) {
    return width / 550;
  } else if (width < 1300) {
    return width / 1000;
  }
  return width / 2000;
}
