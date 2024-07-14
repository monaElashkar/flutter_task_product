import 'package:flutter/material.dart';
import 'package:flutter_task/config/route/app_route.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       onGenerateRoute: (settings)=>AppRoute.onGenerate(settings),
    );
  }
}