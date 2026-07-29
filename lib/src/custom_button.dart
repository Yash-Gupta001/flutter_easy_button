import 'package:flutter/material.dart';

/// Button type enum for CustomButton.
enum ButtonType {
  /// Filled button style with solid background.
  filled,
  
  /// Outlined button style with border.
  outlined,
}

/// A customizable Material 3 filled button.
///
/// Supports:
/// - Loading state
/// - Disabled state
/// - Optional leading icon
/// - Full-width layout
/// - Custom colors
class CustomButton extends StatelessWidget {
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

  /// Border color for outlined button type.
  ///
  /// Defaults to `buttonColor` if not provided.
  final Color? borderColor;

  /// Border width for outlined button type.
  final double borderWidth;

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

  /// Button type: filled or outlined.
  final ButtonType buttonType;

  /// Creates a customizable Material 3 button.
  const CustomButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    required this.buttonColor,
    required this.textColor,
    required this.buttonType,
    this.buttonTextId,
    this.icon,
    this.iconSize = 18,
    this.borderColor,
    this.borderWidth = 2.0,
    this.isLoading = false,
    this.isFullWidth = false,
    this.isDisabled = false,
    this.loadingText = "Loading...",
  });

  @override
  Widget build(BuildContext context) {
    final Widget buttonChild = isLoading
        ? Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: textColor,
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
          );

    return SizedBox(
      width: isFullWidth ? double.infinity : null,
      child: buttonType == ButtonType.filled
          ? FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: buttonColor,
                foregroundColor: textColor,
                disabledBackgroundColor: isLoading ? buttonColor : null,
                disabledForegroundColor: isLoading ? textColor : null,
              ),
              onPressed: (isLoading || isDisabled) ? null : onPressed,
              child: buttonChild,
            )
          : OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.transparent,
                foregroundColor: textColor,
                side: BorderSide(
                  color: (isLoading || isDisabled)
                      ? (borderColor ?? buttonColor).withValues(alpha: 0.38)
                      : (borderColor ?? buttonColor),
                  width: borderWidth,
                ),
              ),
              onPressed: (isLoading || isDisabled) ? null : onPressed,
              child: buttonChild,
            ),
    );
  }
}

/// A customizable Material 3 outlined button.
///
/// Supports:
/// - Loading state
/// - Disabled state
/// - Optional leading icon
/// - Full-width layout
/// - Custom colors and border
class CustomOutlineButton extends StatelessWidget {
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

  /// Border color for outlined button type.
  ///
  /// Defaults to `buttonColor` if not provided.
  final Color? borderColor;

  /// Border width for outlined button type.
  final double borderWidth;

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

  /// Button type: filled or outlined.
  final ButtonType buttonType;

  /// Creates a customizable Material 3 outlined button.
  const CustomOutlineButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    required this.buttonColor,
    required this.textColor,
    required this.buttonType,
    this.buttonTextId,
    this.icon,
    this.iconSize = 18,
    this.borderColor,
    this.borderWidth = 2.0,
    this.isLoading = false,
    this.isFullWidth = false,
    this.isDisabled = false,
    this.loadingText = "Loading...",
  });

  @override
  Widget build(BuildContext context) {
    final Widget buttonChild = isLoading
        ? Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: textColor,
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
          );

    return SizedBox(
      width: isFullWidth ? double.infinity : null,
      child: buttonType == ButtonType.filled
          ? FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: buttonColor,
                foregroundColor: textColor,
                disabledBackgroundColor: isLoading ? buttonColor : null,
                disabledForegroundColor: isLoading ? textColor : null,
              ),
              onPressed: (isLoading || isDisabled) ? null : onPressed,
              child: buttonChild,
            )
          : OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.transparent,
                foregroundColor: textColor,
                side: BorderSide(
                  color: (isLoading || isDisabled)
                      ? (borderColor ?? buttonColor).withValues(alpha: 0.38)
                      : (borderColor ?? buttonColor),
                  width: borderWidth,
                ),
              ),
              onPressed: (isLoading || isDisabled) ? null : onPressed,
              child: buttonChild,
            ),
    );
  }
}