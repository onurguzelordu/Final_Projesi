// açılış ekranının buluncağı dosya

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Logo ve yükleme göstergesi bölümü
          Container(
            width: double.infinity,
            child: Column(
              children: [
                // Logo bölümü
                Container(
                  width: 250,
                  height: 250,
                  child: Image.network(
                   "https://img.vivense.com/300x300/images/437fb06bc4404e66b1decf911988d2e0.jpg",
                    fit: BoxFit.contain,
                  ),
                ),

                const SizedBox(height: 30),

                // Yükleme ikonu
                const Icon(
                  CupertinoIcons.arrow_2_circlepath,
                  size: 40,
                  color: Colors.blue,
                ),

                const SizedBox(height: 20),

                // Yükleniyor yazısı
                const Text(
                  'Yükleniyor...',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
