import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fathah/style.dart';

class BTN extends StatelessWidget {
  const BTN({super.key, required this.label, required this.onPressed});
  final String label;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 4),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          fixedSize: Size(Get.width, 50),
          backgroundColor: appColors.secondary,
          foregroundColor: appColors.primary,
        ),
        child: Text(
          label,
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
