import 'package:flutter/material.dart';

class AppBarIcon extends StatelessWidget {
  final IconData icon;
  final double size;
  final double iconSize;
  final VoidCallback? onTap;

  const AppBarIcon({
    super.key,
    required this.icon,
    this.size = 40,
    this.iconSize = 25,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black12,
      ),
      child: InkWell(onTap: onTap, child: Icon(icon)),
    );
  }
}
