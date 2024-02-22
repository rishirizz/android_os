import 'package:android/screens/always_on_display_screen.dart';
import 'package:android/utils/app_route.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ANDROID OS',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AlwaysOnDisplayScreen(),
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder = AppPageRouter().getPageRoute(settings);
        return MaterialPageRoute(builder: (ctx) {
          return builder(ctx);
        });
      },
    );
  }
}
