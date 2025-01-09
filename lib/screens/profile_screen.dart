import 'package:flutter/material.dart';
import 'package:home_decoration/widgets/bottom_menu.dart';
import 'package:home_decoration/core/themes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ArkaPlanRengi,
      body: Center(child: Text("Profiliniz"),

      ),
bottomNavigationBar: BottomMenu(),
    );
  }
}