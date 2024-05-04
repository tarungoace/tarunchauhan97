import 'package:flutter/material.dart';
import 'package:tarundevindia/common/responsive/src/screen_data.dart';
import 'package:tarundevindia/common/responsive/src/screen_type.dart';

class WebsiteScreen extends InheritedWidget {
  WebsiteScreen({
    super.key,
    required super.child,
    required MediaQueryData mediaQueryData,
  }) : screenData = ScreenData(
          type: getScreenType(mediaQueryData),
          size: mediaQueryData.size,
        );

  final ScreenData screenData;
  @override
  bool updateShouldNotify(covariant WebsiteScreen oldWidget) {
    return oldWidget.screenData != screenData;
  }

  static ScreenData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<WebsiteScreen>()!.screenData;
  }
}
