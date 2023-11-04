import 'package:bookly_2/core/utils/AppRoutes.dart';
import 'package:bookly_2/core/utils/MyTheme.dart';
import 'package:bookly_2/core/utils/constanse.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  var box = await Hive.openBox(KBookBox);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
    );
  }
}
