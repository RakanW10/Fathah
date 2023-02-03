import 'package:fathah/style.dart';
import 'package:flutter/material.dart';

class BulletText extends StatelessWidget {
  const BulletText({super.key, required this.strs});
  final List<String> strs;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 30),
      alignment: Alignment.centerLeft,
      height: 100,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: strs.length,
        itemBuilder: (context, index) => Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "\u2022",
              style: TextStyle(fontSize: 18, color: appColors.primary),
            ), //bullet text
            const SizedBox(
              width: 10,
            ), //space between bullet and text
            Text(
              strs[index],
              style: TextStyle(fontSize: 18, color: appColors.primary),
            )
          ],
        ),
      ),
    );
  }
}
