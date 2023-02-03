import 'package:fathah/style.dart';
import 'package:flutter/material.dart';

class MyDicider extends StatelessWidget {
  const MyDicider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Divider(
        thickness: 0.5,
        color: appColors.disable,
      ),
    );
  }
}
