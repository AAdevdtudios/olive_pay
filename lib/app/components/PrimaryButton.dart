import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final Function()? onPressed;
  final String? name;
  final IconData? icon;
  final Color? backgroundColor;
  final Color? foregroundColor;

  const PrimaryButton({
    super.key,
    this.onPressed,
    this.name = 'Get Started',
    this.icon,
    this.backgroundColor,
    this.foregroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 57,
      child: icon != null
          ? ElevatedButton.icon(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: backgroundColor ?? const Color(0xFFAE64DD),
                foregroundColor: foregroundColor ?? Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              icon: Icon(icon),
              label: Text(name!),
            )
          : ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFAE64DD),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(name!),
            ),
    );
  }
}
