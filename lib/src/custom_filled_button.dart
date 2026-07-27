import 'package:flutter/material.dart';

class CustomFilledButton extends StatelessWidget {
  final String buttonText;
  final String? buttonTextId;
  final Color? textColor;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final bool isLoading;
  final bool isFullWidth;
  final bool isDisabled;
  final VoidCallback onPressed;
  final int iconSize;
  final IconData? icon;
  final String loadingText;

  const CustomFilledButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    this.buttonTextId,
    this.icon,
    this.iconSize = 18,
    this.backgroundColor,
    this.textColor,
    this.foregroundColor,
    this.isLoading = false,
    this.isFullWidth = false,
    this.isDisabled = false,
    this.loadingText = "Loading...",
  });

  @override
  Widget build(BuildContext context) {
    final Color bgColor =
        backgroundColor ?? Theme.of(context).colorScheme.primary;

    final Color fgColor =
        foregroundColor ?? Theme.of(context).colorScheme.onPrimary;

    final Color txtColor = textColor ?? fgColor;

    return SizedBox(
      width: isFullWidth ? double.infinity : null,
      child: FilledButton(
        style: FilledButton.styleFrom(
          backgroundColor: bgColor,
          foregroundColor: fgColor,
        ),
        onPressed: (isLoading || isDisabled) ? null : onPressed,
        child: isLoading
            ? Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: txtColor,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(loadingText),
                ],
              )
            : Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (icon != null) ...[
                    Icon(
                      icon,
                      size: iconSize.toDouble(),
                      color: txtColor,
                    ),
                    const SizedBox(width: 8),
                  ],
                  Flexible(
                    child: Text(
                      buttonText,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: txtColor),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}