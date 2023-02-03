import 'package:fathah/style.dart';
import 'package:flutter/material.dart';

class BulletText extends StatelessWidget {
  const BulletText({super.key, required this.strs});
  final List<String> strs;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: strs.length,
        itemBuilder: (context, index) => Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "\u2022",
              style: TextStyle(fontSize: 18, color: appColors.primary),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                strs[index],
                style: TextStyle(fontSize: 18, color: appColors.primary),
              ),
            )
          ],
        ),
      ),
    );
  }
}
