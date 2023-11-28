import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'screens/create_medication_screen/create_medication_screen.dart';

class Router extends StatelessWidget {
  const Router({super.key});

  @override
  Widget build(context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light.copyWith(
        systemNavigationBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      child: GetMaterialApp.router(
        theme: ThemeData(
          useMaterial3: true,
          fontFamily: "WorkSans",
          textTheme: TextTheme(
            bodySmall: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontSize: 14,
              fontFamily: "WorkSans",
              color: const Color(0xFF323232),
            ),
            labelLarge: Theme.of(context).textTheme.labelLarge?.copyWith(
              fontSize: 18,
              fontFamily: "WorkSans",
            ),
          ),
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF1EAFB3),
            primary:  const Color(0xFF1EAFB3),
          ),
        ),
        getPages: [
          GetPage(
            name: "/",
            page: () => const CreateMedicationScreen(),
          ),
        ],
      ),
    );
  }
}
