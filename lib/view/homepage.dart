import 'package:fathah/style.dart';
import 'package:fathah/view/components/mainBox.dart';
import 'package:flutter/material.dart';

//! Temp data, simulated for DB
const data = [
  {
    "name": "العجوة",
    "image": "assets/images/Ajwa.png",
    "description": "test",
    "place": "testPlace",
    "benefits": "testBenefits",
  },
  {
    "name": "الجالكسي",
    "image": "assets/images/Galaxy.jpg",
    "description": "test",
    "place": "testPlace",
    "benefits": "testBenefits",
  },
  {
    "name": "المجدول",
    "image": "assets/images/Medjool.png",
    "description": "test",
    "place": "testPlace",
    "benefits": "testBenefits",
  },
  {
    "name": "المنيفي",
    "image": "assets/images/Meneifi.jpeg",
    "description": "test",
    "place": "testPlace",
    "benefits": "testBenefits",
  },
  {
    "name": "نبتة علي",
    "image": "assets/images/NabtatAli.png",
    "description": "test",
    "place": "testPlace",
    "benefits": "testBenefits",
  },
  {
    "name": "الرطب",
    "image": "assets/images/Rutab.png",
    "description": "test",
    "place": "testPlace",
    "benefits": "testBenefits",
  },
  {
    "name": "الشيشي",
    "image": "assets/images/Shaishe.png",
    "description": "test",
    "place": "testPlace",
    "benefits": "testBenefits",
  },
  {
    "name": "السكري",
    "image": "assets/images/Sokari.png",
    "description": "test",
    "place": "testPlace",
    "benefits": "testBenefits",
  },
  {
    "name": "الصقعي",
    "image": "assets/images/Sugaey.jpg",
    "description": "test",
    "place": "testPlace",
    "benefits": "testBenefits",
  },
];

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
            onTap: () {},
          ),
        ),
      ),
    );
  }
}
