import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HelpDeskScreen extends StatelessWidget {
  const HelpDeskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 
        Center(child: 
           Text(
              "Yardım Masası Ekranınız",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            
            ),),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.go("/home");
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            
            const SizedBox(height: 600),
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

           Padding( padding: const EdgeInsets.only(top: 20.0),)
          ],
        ),
      ),
    );
  }
}
