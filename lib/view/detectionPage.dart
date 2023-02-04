import 'dart:io';

import 'package:fathah/controller/detectionPageController.dart';
import 'package:fathah/style.dart';
import 'package:fathah/view/components/btn.dart';
import 'package:fathah/view/components/bullteText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class DetectionPage extends StatelessWidget {
  DetectionPage({super.key});
  final DetectionPageController _detectionPageController = Get.find();
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
          child: ListView(
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
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: BulletText(
                  strs: [
                    "ضع التمرة على خلفية بيضاء",
                    "ضع تمرة واحده فقط في منتصف الصورة",
                    "اجعل المسافة بين الكاميره والتمرة قرابة 5 سم",
                    "تأكد من وجود إضاءة كافية في المكان"
                  ],
                ),
              ),
              GetBuilder<DetectionPageController>(
                builder: (_) => _detectionPageController.ImageFile == null
                    ? const SizedBox(
                        height: 100,
                      )
                    : Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        width: 100,
                        child: Image.file(
                          width: Get.width - 50,
                          height: 300,
                          File(_detectionPageController.ImageFile!.path),
                        ),
                      ),
              ),
              BTN(
                  label: "التقاط صورة",
                  onPressed: () async {
                    _detectionPageController.getImage(
                      source: ImageSource.camera,
                    );
                  }),
              BTN(
                  label: "اختيار صورة من الألبوم",
                  onPressed: () async {
                    _detectionPageController.getImage(
                        source: ImageSource.gallery);
                  }),
              GetBuilder<DetectionPageController>(
                builder: (_) => BTN(
                    label: "تنبئ",
                    onPressed: _detectionPageController.ImageFile == null
                        ? null
                        : () {}),
              ),
            ],
          ),
        ));
  }
}
