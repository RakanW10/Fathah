import 'package:fathah/style.dart';
import 'package:flutter/material.dart';

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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("لنتائج افضل يرجى اتباع \nالخطوات التالية",
                  style: TextStyle(
                    fontSize: 28,
                  ),
                  textAlign: TextAlign.center),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "\u2022",
                    style: TextStyle(fontSize: 18),
                  ), //bullet text
                  SizedBox(
                    width: 10,
                  ), //space between bullet and text
                  Text(
                    " ضع التمرة على خلفية بيضاء",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
