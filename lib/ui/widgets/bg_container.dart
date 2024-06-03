import 'package:flutter/material.dart';
import 'package:tarundevindia/config/theme/app_colors.dart';

class BGContainer extends StatelessWidget {
  const BGContainer({
    super.key,
    this.child,
    this.width,
    this.height,
    this.padding,
    this.margin,
    this.borderRadius,
  });

  final Widget? child;
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin ?? EdgeInsets.zero,
      padding: padding ??
          const EdgeInsets.only(
            top: 50,
            bottom: 50,
          ),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            AppColors.onlyBlue,
            AppColors.darkBlue,
          ],
        ),
        borderRadius: borderRadius ?? BorderRadius.zero,
      ),
      child: child,
    );
  }
}
