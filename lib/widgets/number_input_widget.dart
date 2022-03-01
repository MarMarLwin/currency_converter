import 'package:currency/util/colors.dart';
import 'package:currency/util/dimensions.dart';
import 'package:flutter/material.dart';

class NumberInputWidget extends StatelessWidget {
  final String? text;
  final double buttonWidth;
  final double buttonHeight;
  final void Function()? onPressed;
  final void Function()? onLongPress;
  final TextStyle? style;
  final Color? iconColor;

  const NumberInputWidget({
    Key? key,
    this.text,
    required this.buttonHeight,
    required this.buttonWidth,
    this.onLongPress,
    this.onPressed,
    this.style,
    this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Brightness brightness = Theme.of(context).brightness;

    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      onPrimary:
          brightness == Brightness.dark ? Colors.white24 : Colors.black26,
      primary: AppColor.secondaryColor,
      minimumSize: Size(buttonWidth, buttonHeight),
      elevation: 0,
      animationDuration: const Duration(milliseconds: 30),
    );
    return ElevatedButton(
      child: text == "←"
          ? Icon(
              Icons.backspace,
              color: iconColor,
              size: Dimension.iconSize25,
            )
          : Text(
              text ?? '',
              style: TextStyle(
                  fontSize: Dimension.fontSize24,
                  color: Colors.white,
                  fontWeight: FontWeight.w900),
            ),
      style: raisedButtonStyle,
      onPressed: onPressed,
      onLongPress: onLongPress,
    );
  }
}
