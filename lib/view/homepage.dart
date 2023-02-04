import 'package:fathah/dummyData.dart';
import 'package:fathah/router/router.dart';
import 'package:fathah/style.dart';
import 'package:fathah/view/components/mainBox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.background,
      appBar: AppBar(
        backgroundColor: appColors.secondary,
        title: Text(
          "أنواع التمور",
          style: TextStyle(
            fontSize: 24,
            color: appColors.primary,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16, left: 12, right: 12),
        child: GridView.builder(
          itemCount: data.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 8,
          ),
          itemBuilder: (context, index) => MainBox(
            backgroundImage: AssetImage(data[index]["image"]!),
            label: data[index]["name"]!,
            onTap: () {
              Get.toNamed(RouterName.detailsPage, arguments: dateDate[index]);
            },
          ),
        ),
      ),
    );
  }
}
