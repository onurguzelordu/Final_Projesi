import 'package:flutter/material.dart';
import 'package:home_decoration/widgets/bottom_menu.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(child: Text("Profiliniz"),

      ),
bottomNavigationBar: BottomMenu(),
    );
  }
}