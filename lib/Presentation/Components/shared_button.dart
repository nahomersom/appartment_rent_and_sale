import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../Data/Data Providers/colors.dart';
import '../../Data/Data Providers/side_constants.dart';

class SharedButton extends StatelessWidget {
  SharedButton(
      {super.key,
      required TextTheme textTheme,
      required this.buttonText,
      this.buttonColor = ColorResources.primaryColor,
      this.buttonTextColor,
      this.onPressed,
      this.isSending = false,
      this.hasNoBackground = false,
      this.borderColor,
      this.boxHeight = 0.07,
      this.boxWidth = null,
      this.fontSize = 0.07 * 260,
      this.useInfinityWidth = false,
      this.fontWeight = FontWeight.w500,
      this.icon = Icons.send_outlined,
      this.hasIcon = false,
      this.IconColor = Colors.white,
      this.iconSize = 20,
      this.isDolors = false,
      this.isDolorHig = 35,
      this.fontFamily = 'robot'})
      : _textTheme = textTheme;

  final TextTheme _textTheme;
  final String buttonText;
  final Color? buttonColor;
  final FontWeight fontWeight;
  final double fontSize;

  final bool isSending;
  final bool hasNoBackground;
  final double boxHeight;
  final double? boxWidth;
  final Color? borderColor;
  final bool useInfinityWidth;
  final Color? buttonTextColor;
  final String? fontFamily;
  final bool hasIcon;
  final IconData icon;
  final Color? IconColor;
  final double iconSize;
  final double isDolorHig;

  final isDolors;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var screenHeight = size.height;

    var text = Text(buttonText,
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        style: _textTheme.headlineSmall?.copyWith(
            fontFamily: fontFamily,
            fontWeight: hasNoBackground ? FontWeight.bold : FontWeight.w600,
            color: buttonTextColor != null
                ? buttonTextColor!
                : hasNoBackground
                    ? ColorResources.textColor
                    : ColorResources.scaffoldColor,
            fontSize: fontSize));
    return SizedBox(
      height: isDolors ? isDolorHig : screenHeight * boxHeight,
      width: useInfinityWidth ? double.infinity : boxWidth,
      child: TextButton(
        onPressed: isSending ? null : onPressed,
        style: ButtonStyle(
            backgroundColor: hasNoBackground
                ? MaterialStateProperty.all<Color>(Colors.transparent)
                : MaterialStateProperty.all<Color>(buttonColor!),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    side: hasNoBackground
                        ? BorderSide(
                            width: 2,
                            color: borderColor ?? ColorResources.textColor)
                        : const BorderSide(width: 0, color: Colors.transparent),
                    borderRadius:
                        BorderRadius.circular(Dimensions.borderRadius + 30)))),
        child: !isSending
            ? hasIcon
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      text,
                      SizedBox(
                        width: 10,
                      ),
                      if (hasIcon)
                        Icon(
                          icon,
                          color: IconColor,
                          size: iconSize,
                        )
                    ],
                  )
                : text
            : SpinKitFadingCircle(
                color: buttonTextColor ?? ColorResources.scaffoldColor,
                size: 30.0,
              ),
      ),
    );
  }
}
