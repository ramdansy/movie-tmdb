import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommonIcon {
  static const _assetPath = "assets/icons";

  static SvgPicture getImageFromAsset(String fileName, {Color? color, double? width, double? height}) {
    if (width != null && height != null) {
      return SvgPicture.asset(
        "$_assetPath/$fileName",
        colorFilter: color != null ? ColorFilter.mode(color, BlendMode.srcIn) : null,
        width: width,
        height: height,
      );
    }

    return SvgPicture.asset(
      "$_assetPath/$fileName",
      colorFilter: color != null ? ColorFilter.mode(color, BlendMode.srcIn) : null,
    );
  }

  //EXAMPLE FOR GETTING SVG IMAGE
  ///Bottom menu icon
  static SvgPicture logo = getImageFromAsset("logo.svg");
}
