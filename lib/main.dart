import 'package:clean_archi_bookly/constants.dart';
import 'package:clean_archi_bookly/core/utils/app_router.dart';
import 'package:clean_archi_bookly/features/home/domain/entities/book_entity.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const BooklyApp(),
    ),
  );
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox(kFeaturedBox);
    await Hive.openBox(kNewestBox);

}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      // home: const SplashView(),
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
        ),
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
    );
  }
}

// GetMaterialApp -> Not Well documented - but Good for theme management 
// 

