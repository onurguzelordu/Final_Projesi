import 'package:flutter/material.dart';
import 'package:home_decoration/widgets/bottom_menu.dart';
import 'package:home_decoration/core/constrants.dart';

class VoiceScreen extends StatelessWidget {
  const VoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: ArkaPlanRengi,

      body: Center(
        child: Text("Ses Ekraniniz"),

      ),
       bottomNavigationBar: BottomMenu() ,
    );
  }
}