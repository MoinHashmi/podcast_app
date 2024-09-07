import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color iconColor;

  const SocialButton(
      {super.key,
        this.label = '',
        required this.icon,
        this.iconColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        Text(
          label,
          style: const TextStyle(
              color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}