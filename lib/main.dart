import 'package:flutter/material.dart';
import 'package:home_decoration/core/themes.dart';
import 'core/routes.dart';

void main() {
  runApp(const HomeStyle());
}

class HomeStyle extends StatelessWidget {
  const HomeStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // theme: lightTheme
        
      ),
      routerConfig: router, // go_router yapılandırmamızı kullan
      debugShowCheckedModeBanner: false, // Debug bandını kaldır
    );
  }
}
