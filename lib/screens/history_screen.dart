import 'package:flutter/material.dart';
import 'package:home_decoration/widgets/bottom_menu.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Geçmiş Ekrani"),

      ),
      bottomNavigationBar: BottomMenu() ,
    );
  }
}