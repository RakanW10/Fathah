import 'package:fathah/style.dart';
import 'package:flutter/material.dart';

class MainBox extends StatelessWidget {
  const MainBox({
    super.key,
    required this.backgroundImage,
    required this.label,
    required this.onTap,
  });
  final AssetImage backgroundImage;
  final String label;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 2),
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image: backgroundImage,
            fit: BoxFit.fill,
          ),
          boxShadow: kElevationToShadow[4],
        ),
        child: Center(
          child: Container(
            height: 80,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xFFD9D9D9).withOpacity(0.8),
            ),
            child: Center(
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 32,
                  color: appColors.primary,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
