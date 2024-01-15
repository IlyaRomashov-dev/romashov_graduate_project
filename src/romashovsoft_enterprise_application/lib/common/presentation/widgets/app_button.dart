import 'package:flutter/material.dart';
import 'package:romashovsoft_enterprise_application/common/constants/app_colors.dart';

class AppButton extends StatefulWidget {
  const AppButton({
    super.key,
    this.background = AppColors.primary,
    this.foreground = AppColors.light,
    this.padding = const EdgeInsets.all(12.0),
    required this.onPressed,
    this.onLongPressed,
    this.onHover,
    this.onFocusChanged,
    required this.text,
    this.height = 48,
    this.borderRadius = 12,
  });
  const AppButton.light({
    super.key,
    this.background = AppColors.light,
    this.foreground = AppColors.primary,
    this.padding = const EdgeInsets.all(12.0),
    required this.onPressed,
    this.onLongPressed,
    this.onHover,
    this.onFocusChanged,
    required this.text,
    this.height = 48,
    this.borderRadius = 12,
  });

  final Color background;
  final Color foreground;
  final EdgeInsetsGeometry padding;
  final void Function()? onPressed;
  final void Function()? onLongPressed;
  final void Function(bool)? onHover;
  final void Function(bool)? onFocusChanged;
  final String text;
  final double height;
  final double borderRadius;

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shadowColor: MaterialStatePropertyAll(Colors.transparent),
        surfaceTintColor: MaterialStatePropertyAll(Colors.transparent),
        backgroundColor: MaterialStatePropertyAll(widget.background),
        foregroundColor: MaterialStatePropertyAll(widget.foreground),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(widget.borderRadius),
            ),
          ),
        ),
        minimumSize: MaterialStatePropertyAll(Size.fromHeight(widget.height)),
      ),
      onPressed: widget.onPressed,
      onLongPress: widget.onLongPressed,
      onFocusChange: widget.onFocusChanged,
      onHover: widget.onHover,
      child: Padding(
        padding: widget.padding,
        child: Text(widget.text),
      ),
    );
  }
}
