import 'package:fathah/style.dart';
import 'package:fathah/view/components/btn.dart';
import 'package:fathah/view/components/bullteText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetectionPage extends StatelessWidget {
  const DetectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appColors.background,
        appBar: AppBar(
          backgroundColor: appColors.secondary,
          title: Text(
            "تعرف",
            style: TextStyle(
              fontSize: 24,
              color: appColors.primary,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 80,
              ),
              Text(
                "لنتائج افضل يرجى اتباع \nالخطوات التالية",
                style: TextStyle(
                  fontSize: 28,
                  color: appColors.primary,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 40,
              ),
              const BulletText(
                strs: [
                  "ضع التمرة على خلفية بيضاء",
                  "ضع تمرة واحده فقط في منتصف الصورة",
                  "اجعل المسافة بين الكاميره والتمرة قرابة 5 سم",
                  "تأكد من وجود إضاءة كافية في المكان"
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              BTN(label: "التقاط صورة", onPressed: () {}),
              BTN(label: "اختيار صورة من الألبوم", onPressed: () {}),
            ],
          ),
        ));
  }
}
