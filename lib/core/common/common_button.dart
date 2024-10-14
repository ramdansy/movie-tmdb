import 'package:flutter/material.dart';

import '../app_constant.dart';
import 'common_color.dart';

class CommonButtonFilled extends StatelessWidget {
  const CommonButtonFilled({
    super.key,
    required this.onPressed,
    required this.text,
    this.isEnable = true,
    this.fontWeight = FontWeight.w500,
    this.fontSize = AppConstant.fontSize12,
    this.paddingVertical = AppConstant.padding12,
    this.paddingHorizontal = AppConstant.padding24,
    this.color = CommonColor.accent,
    this.fontColor = CommonColor.fontWhite,
    this.iconLeft,
    this.isLoading = false,
    this.textAlign,
  });

  final VoidCallback onPressed;
  final String text;
  final bool isEnable;
  final FontWeight fontWeight;
  final double fontSize;
  final double paddingVertical;
  final double paddingHorizontal;
  final Color color;
  final Color fontColor;
  final Widget? iconLeft;
  final bool isLoading;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isEnable ? onPressed : null,
      borderRadius: BorderRadius.circular(99.0),
      child: isLoading
          ? const SizedBox(
              width: AppConstant.iconNormal,
              height: AppConstant.iconNormal,
              child: CircularProgressIndicator(color: CommonColor.white),
            )
          : Container(
              decoration: BoxDecoration(
                color: isEnable ? color : CommonColor.disabled,
                borderRadius: BorderRadius.circular(99.0),
                gradient: color == CommonColor.accent
                    ? const LinearGradient(
                        colors: [
                          CommonColor.accent,
                          Color(0xFF2F3F94),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [
                          0.5,
                          0.85
                        ],
                      )
                    : null,
              ),
              padding: EdgeInsets.symmetric(vertical: paddingVertical, horizontal: paddingHorizontal),
              child: Row(
                children: [
                  if (iconLeft != null) ...[
                    Container(child: iconLeft),
                    const SizedBox(width: AppConstant.padding8),
                  ],
                  Expanded(
                    child: Text(
                      text,
                      style: TextStyle(color: fontColor, fontWeight: fontWeight, fontSize: fontSize),
                      textAlign: textAlign ?? TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}

class CommonButtonOutlined extends StatelessWidget {
  const CommonButtonOutlined({
    super.key,
    required this.onPressed,
    required this.text,
    this.isEnable = true,
    this.fontWeight = FontWeight.w500,
    this.fontSize = AppConstant.fontSize12,
    this.paddingVertical = AppConstant.padding12,
    this.paddingHorizontal = AppConstant.padding24,
    this.color = CommonColor.accent,
    this.fontColor = CommonColor.fontWhite,
    this.iconLeft,
    this.isLoading = false,
  });

  final VoidCallback onPressed;
  final String text;
  final bool isEnable;
  final FontWeight fontWeight;
  final double fontSize;
  final double paddingVertical;
  final double paddingHorizontal;
  final Color color;
  final Color fontColor;
  final Widget? iconLeft;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isEnable ? onPressed : null,
      borderRadius: BorderRadius.circular(99.0),
      child: Container(
        decoration: BoxDecoration(
          color: isEnable ? CommonColor.main : CommonColor.disabled,
          borderRadius: BorderRadius.circular(99.0),
          border: Border.all(color: CommonColor.accent),
        ),
        padding: EdgeInsets.symmetric(vertical: paddingVertical, horizontal: paddingHorizontal),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: fontColor, fontWeight: fontWeight, fontSize: fontSize),
          ),
        ),
      ),
    );
  }
}
