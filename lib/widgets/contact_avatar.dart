import 'package:flutter/material.dart';

class ContactAvatar extends StatelessWidget {
  final Image image;
  final num size;
  final num borderRadius;
  const ContactAvatar({
    super.key,
    required this.image,
    required this.size,
    this.borderRadius = 15,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius.toDouble()),
      child: SizedBox.square(dimension: size.toDouble(), child: image),
    );
  }
}
