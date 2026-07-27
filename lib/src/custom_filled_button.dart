import 'package:flutter/material.dart';

/// A customizable Material 3 filled button.
///
/// Supports:
/// - Loading state
/// - Disabled state
/// - Optional leading icon
/// - Full-width layout
/// - Custom colors
class CustomFilledButton extends StatelessWidget {
  /// Text displayed inside the button.
  final String buttonText;

  /// Optional identifier that can be used for localization.
  final String? buttonTextId;

  /// Color of the button text.
  ///
  /// Color of the button text/icon. Required.
  final Color textColor;

  /// Background color of the button. Required.
  final Color buttonColor;

  /// Color used for the loading indicator and as the fallback
  /// text/icon color. Required.
  final Color loadingColor;

  /// Displays a loading indicator when set to `true`.
  final bool isLoading;

  /// Expands the button to fill the available width.
  final bool isFullWidth;

  /// Disables the button when set to `true`.
  final bool isDisabled;

  /// Callback invoked when the button is pressed.
  final VoidCallback onPressed;

  /// Size of the optional leading icon.
  final int iconSize;

  /// Optional leading icon displayed before the button text.
  final IconData? icon;

  /// Text displayed while the button is in the loading state.
  final String loadingText;

  /// Creates a customizable Material 3 filled button.
  const CustomFilledButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    required this.buttonColor,
    required this.loadingColor,
    this.buttonTextId,
    this.icon,
    this.iconSize = 18,
    required this.textColor,
    this.isLoading = false,
    this.isFullWidth = false,
    this.isDisabled = false,
    this.loadingText = "Loading...",
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isFullWidth ? double.infinity : null,
      child: FilledButton(
        style: FilledButton.styleFrom(
          backgroundColor: buttonColor,
          foregroundColor: textColor,
          disabledBackgroundColor: isLoading ? buttonColor : null,
          disabledForegroundColor: isLoading ? textColor : null,
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
                      color: loadingColor,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    loadingText,
                    style: TextStyle(color: textColor),
                  ),
                ],
              )
            : Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (icon != null) ...[
                    Icon(
                      icon,
                      size: iconSize.toDouble(),
                      color: textColor,
                    ),
                    const SizedBox(width: 8),
                  ],
                  Flexible(
                    child: Text(
                      buttonText,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: textColor),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}