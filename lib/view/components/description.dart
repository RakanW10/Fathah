import 'package:fathah/controller/detailsPageController.dart';
import 'package:fathah/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Description extends StatelessWidget {
  const Description({super.key, required this.description});
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "الوصف",
          style: TextStyle(
            color: appColors.primary,
            fontSize: 24,
          ),
        ),
        GetBuilder(
          init: DetalisPageController(),
          builder: (controller) => Column(
            children: [
              Text(
                description,
                maxLines: controller.isReadMore ? null : 3,
                overflow: controller.isReadMore ? null : TextOverflow.ellipsis,
                style: TextStyle(
                  color: appColors.primary,
                  fontSize: 18,
                ),
              ),
              Container(
                width: Get.width,
                alignment: Alignment.centerLeft,
                child: InkWell(
                  onTap: () {
                    controller.chageReadMore();
                  },
                  child: Text(
                    controller.isReadMore ? "اظهر اقل" : "اظهر المزيد",
                    style: TextStyle(
                      color: appColors.primary,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
