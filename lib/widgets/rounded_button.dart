import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Color color;
  final Icon icon;
  final VoidCallback onTap;
  final num borderRadius;
  const RoundedButton({
    Key? key,
    required this.color,
    required this.icon,
    required this.onTap,
    this.borderRadius = 19,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(13),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius.toDouble()),
      ),
      child: icon,
    );
  }
}
