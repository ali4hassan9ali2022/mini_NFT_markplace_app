import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/Core/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleHeavy36(context) {
    return TextStyle(
      color: Colors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 36),
      fontFamily: "SF Pro Display",
      fontWeight: FontWeight.w900,
    );
  }

  static TextStyle styleBold20(context) {
    return TextStyle(
      color: Colors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: "SF Pro Display",
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleRegular10(context) {
    return TextStyle(
      color: Color(0xffEBEBF5),
      fontSize: getResponsiveFontSize(context, fontSize: 10),
      fontFamily: "SF Pro Display",
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold16(context) {
    return TextStyle(
      color: Color(0xffffffff),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: "SF Pro Display",
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleBold26(context) {
    return TextStyle(
      color: Color(0xffffffff),
      fontSize: getResponsiveFontSize(context, fontSize: 26),
      fontFamily: "SF Pro Display",
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleSemiBold18(context) {
    return TextStyle(
      color: Color(0xffffffff),
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: "SF Pro Display",
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle styleSemiBold1(context) {
    return TextStyle(
      color: Color(0xffffffff),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: "SF Pro Display",
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular14(context) {
    return TextStyle(
      color: Color(0xffEBEBF5),
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: "SF Pro Display",
      fontWeight: FontWeight.w400,
    );
  }
}

// sacleFactor
// responsive font size
// (min , max) fontsize
double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
