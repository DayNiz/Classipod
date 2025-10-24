import 'package:classipod/core/constants/app_palette.dart';
import 'package:classipod/core/extensions/build_context_extensions.dart';
import 'package:flutter/cupertino.dart';

@immutable
class DeviceColorStyle {
  final double noiseOpacity;
  final List<Color> frameGradientColors;
  final Color screenBorderColor;
  final Color controlBackgroundColor;
  final Color controlBorderColor;
  final List<Color> innerButtonGradientColors;
  final Color buttonAccentColor;
  final Color buttonIconColor;
  final bool isDark;

  const DeviceColorStyle({
    required this.noiseOpacity,
    required this.frameGradientColors,
    required this.screenBorderColor,
    required this.controlBackgroundColor,
    required this.controlBorderColor,
    required this.innerButtonGradientColors,
    required this.buttonAccentColor,
    required this.buttonIconColor,
    required this.isDark,
  });
}

enum DeviceColor {
  silver,
  black,
  lightRed,
  darkRed,
  orange,
  yellow,
  lightGreen,
  darkGreen,
  lightBlue,
  darkBlue,
  pink,
  purple,
  brown;

  static DeviceColor fromName(String raw) {
    switch (raw) {
      case 'red':
        return DeviceColor.lightRed;
      case 'green':
        return DeviceColor.lightGreen;
      case 'blue':
        return DeviceColor.lightBlue;
      case 'violet':
        return DeviceColor.purple;
      default:
        try {
          return DeviceColor.values.byName(raw);
        } catch (_) {
          return DeviceColor.silver;
        }
    }
  }

  String title(BuildContext context) {
    switch (this) {
      case silver:
        return context.localization.silverDeviceColor;
      case black:
        return context.localization.blackDeviceColor;
      case lightRed:
        return context.localization.lightRedDeviceColor;
      case darkRed:
        return context.localization.darkRedDeviceColor;
      case orange:
        return context.localization.orangeDeviceColor;
      case yellow:
        return context.localization.yellowDeviceColor;
      case lightGreen:
        return context.localization.lightGreenDeviceColor;
      case darkGreen:
        return context.localization.darkGreenDeviceColor;
      case lightBlue:
        return context.localization.lightBlueDeviceColor;
      case darkBlue:
        return context.localization.darkBlueDeviceColor;
      case pink:
        return context.localization.pinkDeviceColor;
      case purple:
        return context.localization.purpleDeviceColor;
      case brown:
        return context.localization.brownDeviceColor;
    }
  }

  DeviceColorStyle get style {
    switch (this) {
      case DeviceColor.silver:
        return const DeviceColorStyle(
          noiseOpacity: 1,
          frameGradientColors: [
            AppPalette.lightDeviceFrameGradientColor1,
            AppPalette.lightDeviceFrameGradientColor2,
          ],
          screenBorderColor: AppPalette.lightDeviceScreenBorderColor,
          controlBackgroundColor: CupertinoColors.white,
          controlBorderColor: AppPalette.lightDeviceControlBorderColor,
          innerButtonGradientColors: [
            AppPalette.lightDeviceControlInnerButtonGradientColor1,
            AppPalette.lightDeviceControlInnerButtonGradientColor2,
          ],
          buttonAccentColor: AppPalette.lightDeviceButtonColor,
          buttonIconColor: AppPalette.lightDeviceButtonColor,
          isDark: false,
        );
      case DeviceColor.black:
        return const DeviceColorStyle(
          noiseOpacity: 0.3,
          frameGradientColors: [
            AppPalette.darkDeviceFrameGradientColor1,
            AppPalette.darkDeviceFrameGradientColor2,
          ],
          screenBorderColor: AppPalette.darkDeviceScreenColor,
          controlBackgroundColor: AppPalette.darkDeviceControlBackgroundColor,
          controlBorderColor: CupertinoColors.black,
          innerButtonGradientColors: [
            AppPalette.darkDeviceControlInnerButtonGradientColor1,
            AppPalette.darkDeviceControlInnerButtonGradientColor2,
          ],
          buttonAccentColor: CupertinoColors.white,
          buttonIconColor: CupertinoColors.white,
          isDark: true,
        );
      case DeviceColor.lightRed:
        return const DeviceColorStyle(
          noiseOpacity: 1,
          frameGradientColors: [
            AppPalette.lightRedDeviceFrameGradientColor1,
            AppPalette.lightRedDeviceFrameGradientColor2,
          ],
          screenBorderColor: AppPalette.lightRedDeviceControlBorderColor,
          controlBackgroundColor: CupertinoColors.white,
          controlBorderColor: AppPalette.lightRedDeviceControlBorderColor,
          innerButtonGradientColors: [
            AppPalette.lightRedDeviceControlInnerButtonGradientColor1,
            AppPalette.lightRedDeviceControlInnerButtonGradientColor2,
          ],
          buttonAccentColor: AppPalette.lightRedDeviceButtonColor,
          buttonIconColor: AppPalette.lightRedDeviceButtonColor,
          isDark: false,
        );
      case DeviceColor.darkRed:
        return const DeviceColorStyle(
          noiseOpacity: 0.5,
          frameGradientColors: [
            AppPalette.darkRedDeviceFrameGradientColor1,
            AppPalette.darkRedDeviceFrameGradientColor2,
          ],
          screenBorderColor: AppPalette.darkRedDeviceControlBorderColor,
          controlBackgroundColor:
              AppPalette.darkRedDeviceControlBackgroundColor,
          controlBorderColor: AppPalette.darkRedDeviceControlBorderColor,
          innerButtonGradientColors: [
            AppPalette.darkRedDeviceControlInnerButtonGradientColor1,
            AppPalette.darkRedDeviceControlInnerButtonGradientColor2,
          ],
          buttonAccentColor: AppPalette.darkRedDeviceButtonAccentColor,
          buttonIconColor: AppPalette.darkRedDeviceButtonAccentColor,
          isDark: true,
        );
      case DeviceColor.orange:
        return const DeviceColorStyle(
          noiseOpacity: 1,
          frameGradientColors: [
            AppPalette.orangeDeviceFrameGradientColor1,
            AppPalette.orangeDeviceFrameGradientColor2,
          ],
          screenBorderColor: AppPalette.orangeDeviceControlBorderColor,
          controlBackgroundColor: CupertinoColors.white,
          controlBorderColor: AppPalette.orangeDeviceControlBorderColor,
          innerButtonGradientColors: [
            AppPalette.orangeDeviceControlInnerButtonGradientColor1,
            AppPalette.orangeDeviceControlInnerButtonGradientColor2,
          ],
          buttonAccentColor: AppPalette.orangeDeviceButtonColor,
          buttonIconColor: AppPalette.orangeDeviceButtonColor,
          isDark: false,
        );
      case DeviceColor.yellow:
        return const DeviceColorStyle(
          noiseOpacity: 1,
          frameGradientColors: [
            AppPalette.yellowDeviceFrameGradientColor1,
            AppPalette.yellowDeviceFrameGradientColor2,
          ],
          screenBorderColor: AppPalette.yellowDeviceControlBorderColor,
          controlBackgroundColor: CupertinoColors.white,
          controlBorderColor: AppPalette.yellowDeviceControlBorderColor,
          innerButtonGradientColors: [
            AppPalette.yellowDeviceControlInnerButtonGradientColor1,
            AppPalette.yellowDeviceControlInnerButtonGradientColor2,
          ],
          buttonAccentColor: AppPalette.yellowDeviceButtonColor,
          buttonIconColor: AppPalette.yellowDeviceButtonColor,
          isDark: false,
        );
      case DeviceColor.lightGreen:
        return const DeviceColorStyle(
          noiseOpacity: 1,
          frameGradientColors: [
            AppPalette.lightGreenDeviceFrameGradientColor1,
            AppPalette.lightGreenDeviceFrameGradientColor2,
          ],
          screenBorderColor: AppPalette.lightGreenDeviceControlBorderColor,
          controlBackgroundColor: CupertinoColors.white,
          controlBorderColor: AppPalette.lightGreenDeviceControlBorderColor,
          innerButtonGradientColors: [
            AppPalette.lightGreenDeviceControlInnerButtonGradientColor1,
            AppPalette.lightGreenDeviceControlInnerButtonGradientColor2,
          ],
          buttonAccentColor: AppPalette.lightGreenDeviceButtonColor,
          buttonIconColor: AppPalette.lightGreenDeviceButtonColor,
          isDark: false,
        );
      case DeviceColor.darkGreen:
        return const DeviceColorStyle(
          noiseOpacity: 0.6,
          frameGradientColors: [
            AppPalette.darkGreenDeviceFrameGradientColor1,
            AppPalette.darkGreenDeviceFrameGradientColor2,
          ],
          screenBorderColor: AppPalette.darkGreenDeviceControlBorderColor,
          controlBackgroundColor:
              AppPalette.darkGreenDeviceControlBackgroundColor,
          controlBorderColor: AppPalette.darkGreenDeviceControlBorderColor,
          innerButtonGradientColors: [
            AppPalette.darkGreenDeviceControlInnerButtonGradientColor1,
            AppPalette.darkGreenDeviceControlInnerButtonGradientColor2,
          ],
          buttonAccentColor: AppPalette.darkGreenDeviceButtonAccentColor,
          buttonIconColor: AppPalette.darkGreenDeviceButtonAccentColor,
          isDark: true,
        );
      case DeviceColor.lightBlue:
        return const DeviceColorStyle(
          noiseOpacity: 1,
          frameGradientColors: [
            AppPalette.lightBlueDeviceFrameGradientColor1,
            AppPalette.lightBlueDeviceFrameGradientColor2,
          ],
          screenBorderColor: AppPalette.lightBlueDeviceControlBorderColor,
          controlBackgroundColor: CupertinoColors.white,
          controlBorderColor: AppPalette.lightBlueDeviceControlBorderColor,
          innerButtonGradientColors: [
            AppPalette.lightBlueDeviceControlInnerButtonGradientColor1,
            AppPalette.lightBlueDeviceControlInnerButtonGradientColor2,
          ],
          buttonAccentColor: AppPalette.lightBlueDeviceButtonColor,
          buttonIconColor: AppPalette.lightBlueDeviceButtonColor,
          isDark: false,
        );
      case DeviceColor.darkBlue:
        return const DeviceColorStyle(
          noiseOpacity: 0.6,
          frameGradientColors: [
            AppPalette.darkBlueDeviceFrameGradientColor1,
            AppPalette.darkBlueDeviceFrameGradientColor2,
          ],
          screenBorderColor: AppPalette.darkBlueDeviceControlBorderColor,
          controlBackgroundColor:
              AppPalette.darkBlueDeviceControlBackgroundColor,
          controlBorderColor: AppPalette.darkBlueDeviceControlBorderColor,
          innerButtonGradientColors: [
            AppPalette.darkBlueDeviceControlInnerButtonGradientColor1,
            AppPalette.darkBlueDeviceControlInnerButtonGradientColor2,
          ],
          buttonAccentColor: AppPalette.darkBlueDeviceButtonAccentColor,
          buttonIconColor: AppPalette.darkBlueDeviceButtonAccentColor,
          isDark: true,
        );
      case DeviceColor.pink:
        return const DeviceColorStyle(
          noiseOpacity: 1,
          frameGradientColors: [
            AppPalette.pinkDeviceFrameGradientColor1,
            AppPalette.pinkDeviceFrameGradientColor2,
          ],
          screenBorderColor: AppPalette.pinkDeviceControlBorderColor,
          controlBackgroundColor: CupertinoColors.white,
          controlBorderColor: AppPalette.pinkDeviceControlBorderColor,
          innerButtonGradientColors: [
            AppPalette.pinkDeviceControlInnerButtonGradientColor1,
            AppPalette.pinkDeviceControlInnerButtonGradientColor2,
          ],
          buttonAccentColor: AppPalette.pinkDeviceButtonColor,
          buttonIconColor: AppPalette.pinkDeviceButtonColor,
          isDark: false,
        );
      case DeviceColor.purple:
        return const DeviceColorStyle(
          noiseOpacity: 1,
          frameGradientColors: [
            AppPalette.purpleDeviceFrameGradientColor1,
            AppPalette.purpleDeviceFrameGradientColor2,
          ],
          screenBorderColor: AppPalette.purpleDeviceControlBorderColor,
          controlBackgroundColor: CupertinoColors.white,
          controlBorderColor: AppPalette.purpleDeviceControlBorderColor,
          innerButtonGradientColors: [
            AppPalette.purpleDeviceControlInnerButtonGradientColor1,
            AppPalette.purpleDeviceControlInnerButtonGradientColor2,
          ],
          buttonAccentColor: AppPalette.purpleDeviceButtonColor,
          buttonIconColor: AppPalette.purpleDeviceButtonColor,
          isDark: false,
        );
      case DeviceColor.brown:
        return const DeviceColorStyle(
          noiseOpacity: 0.8,
          frameGradientColors: [
            AppPalette.brownDeviceFrameGradientColor1,
            AppPalette.brownDeviceFrameGradientColor2,
          ],
          screenBorderColor: AppPalette.brownDeviceControlBorderColor,
          controlBackgroundColor: AppPalette.brownDeviceControlBackgroundColor,
          controlBorderColor: AppPalette.brownDeviceControlBorderColor,
          innerButtonGradientColors: [
            AppPalette.brownDeviceControlInnerButtonGradientColor1,
            AppPalette.brownDeviceControlInnerButtonGradientColor2,
          ],
          buttonAccentColor: AppPalette.brownDeviceButtonAccentColor,
          buttonIconColor: AppPalette.brownDeviceButtonAccentColor,
          isDark: true,
        );
    }
  }
}
