import 'package:fathah/firebase_options.dart';
import 'package:fathah/router/router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: RouterName.detailsPage,
      initialRoute: RouterName.appNavigator,
      getPages: router,
      locale: const Locale("ar", "SA"),
      theme: ThemeData(
        textTheme: GoogleFonts.interTextTheme(),
      ),
    );
  }
}
