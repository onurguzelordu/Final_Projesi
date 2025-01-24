// açılış ekranının buluncağı dosya
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Logo ve yükleme göstergesi bölümü
          SizedBox(
            width: double.infinity,
            child: Column(children: [
              // Logo bölümü
              SizedBox(
                width: 250,
                height: 250,
                child: Image.network(
                  "https://img.vivense.com/300x300/images/437fb06bc4404e66b1decf911988d2e0.jpg",
                  fit: BoxFit.contain,
                ),
              ),
              const CircularProgressIndicator(),
              InkWell(
                onTap: () => context.go("/home"),
                child: const SizedBox(
                  width: 300,
                ),
              ),
              const SizedBox(
                width: 60,
              ),
              TextButton(
                onPressed: () => context.go("/home"),
                child: const Text("Geri dönmek için buraya tıklayınız."),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
