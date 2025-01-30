import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_decoration/widgets/bottom_menu.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arama Ekranı'),
       
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            
            const SizedBox(height: 500),
            OutlinedButton.icon(
              onPressed: () {
                context.go("/home");
              },
              style: OutlinedButton.styleFrom(
   
              ),
              
              label: const Text(
                "Geri Dönünüz",
                style: TextStyle(fontSize: 16),
              ),
            ),

    
          ],
        ),
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
