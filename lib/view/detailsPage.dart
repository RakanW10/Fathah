import 'package:fathah/controller/detailsPageController.dart';
import 'package:fathah/style.dart';
import 'package:fathah/view/components/bullteText.dart';
import 'package:fathah/view/components/description.dart';
import 'package:fathah/view/components/myDivider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({
    super.key,
    required this.title,
    required this.description,
    required this.benefits,
    required this.image,
    required this.place,
  });
  final AssetImage image;
  final String title;
  final String place;
  final String description;
  final List<String> benefits;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.background,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Stack(
            children: [
              Container(
                height: Get.height * 0.35,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: image,
                    fit: BoxFit.fill,
                  ),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.red,
                  //   ),
                  //   BoxShadow(
                  //       color: appColors.background,
                  //       spreadRadius: -12.0,
                  //       blurRadius: 12.0,
                  //       offset: Offset(0, -10)),
                  // ],
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 25),
                child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                  color: appColors.primary,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: appColors.primary,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const MyDicider(),
                Description(description: description),
                const MyDicider(),
                Text(
                  "المكان",
                  style: TextStyle(
                    color: appColors.primary,
                    fontSize: 24,
                  ),
                ),
                Text(
                  place,
                  style: TextStyle(
                    color: appColors.primary,
                    fontSize: 18,
                  ),
                ),
                const MyDicider(),
                Text(
                  "الفوائد",
                  style: TextStyle(
                    color: appColors.primary,
                    fontSize: 24,
                  ),
                ),
                BulletText(strs: benefits)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
