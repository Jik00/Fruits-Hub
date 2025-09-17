import 'package:flutter/material.dart';
import 'package:fruits_hub/core/helper_functions/ongenerate_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      showPerformanceOverlay: false,
      onGenerateRoute: onGenerateRoutes,
      initialRoute: 'SplashView',
    );
  }
}

