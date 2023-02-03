import 'package:fathah/controller/detailsPageController.dart';
import 'package:fathah/style.dart';
import 'package:fathah/view/components/bullteText.dart';
import 'package:fathah/view/components/myDivider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.background,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: Get.height * 0.35,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Ajwa.png"),
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
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "العجوة",
                  style: TextStyle(
                    color: appColors.primary,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const MyDicider(),
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
                        "تمر العجوة، والمقصود به أنّه يتم إزالة البذور الموجودة داخل ثمار التمر الناضجة، ثمّ يتم طحنها وضغطها، ويُسحب الماء من داخلها، هذا ويعتبر تمر العجوة مفيد جداً للجسم تمر العجوة، والمقصود به أنّه يتم إزالة البذور الموجودة داخل ثمار التمر الناضجة، ثمّ يتم طحنها وضغطها، ويُسحب الماء من داخلها، هذا ويعتبر تمر العجوة مفيد جداً للجسم تمر العجوة، والمقصود به أنّه يتم إزالة البذور الموجودة داخل ثمار التمر الناضجة، ثمّ يتم طحنها وضغطها، ويُسحب الماء من داخلها، هذا ويعتبر تمر العجوة مفيد جداً للجسم",
                        maxLines: controller.isReadMore ? null : 3,
                        overflow: controller.isReadMore
                            ? null
                            : TextOverflow.ellipsis,
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
                const MyDicider(),
                Text(
                  "المكان",
                  style: TextStyle(
                    color: appColors.primary,
                    fontSize: 24,
                  ),
                ),
                Text(
                  "المدينة",
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
                const BulletText(strs: [
                  "تساعد في في تنظيم ضغط الدم ، كما تحسين من وظائف الكلى.",
                  "تقي من تصلب الشرايين",
                  "تقي من تصلب الشرايين",
                  "تساعد في في تنظيم ضغط الدم ، كما تحسين من وظائف الكلى.",
                  "تساعد في في تنظيم ضغط الدم ، كما تحسين من وظائف الكلى.",
                  "تساعد في في تنظيم ضغط الدم ، كما تحسين من وظائف الكلى.",
                ])
              ],
            ),
          ),
        ],
      ),
    );
  }
}
