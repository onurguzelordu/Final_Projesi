import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController epostaYonetici = TextEditingController();
  TextEditingController sifreYonetici = TextEditingController();

  girisYap() {
    if (epostaYonetici.text.isEmpty || sifreYonetici.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Bilgileriniz Giriniz"),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.red,
          showCloseIcon: true,
        ),
      );
    } else {
      if (sifreYonetici.text.length < 8) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Sifre Minimum 8 haneli olabilir."),
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.red,
            showCloseIcon: true,
          ),
        );
      } else {
        context.go("/home");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
     
      
      body: Center(
      
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const  Row(
              
              children: [
                Padding(padding: EdgeInsets.only(left: 70.0)),
                 Text(
                  "Home Decoration",
                  style: TextStyle(
                    color: Color.fromRGBO(141, 87, 63, 1),
                    fontWeight: FontWeight.w600, 
                    fontSize: 20,
                    
                    
                  ),
                ),
              ],
            ),
              const SizedBox(height: 150,),
              TextField(
                style: const TextStyle(color: Colors.brown), 
                controller: epostaYonetici,
                decoration: InputDecoration(
                  hintText: "E-Postanizi Giriniz",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: const Icon(Icons.email),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                style: const TextStyle(color: Colors.brown), 
                
                obscureText: true,
                controller: sifreYonetici,
                decoration: InputDecoration(
                  hintText: "Sifrenizi Giriniz",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: const Icon(Icons.lock),
                ),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                
                onPressed: girisYap,
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text("Giris Yapiniz", style: TextStyle(fontSize: 16)),
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: () {
                  context.pushReplacement("/register");
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text("Kayit Olunuz", style: TextStyle(fontSize: 16)),
              ),
              const SizedBox(height: 24),
              OutlinedButton.icon(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                icon: Image.asset('assets/icons/google_giris.png', height: 30),
                label: const Text("Google ile Giris Yapiniz",
                    style: TextStyle(fontSize: 16)),
              ),
              const SizedBox(height: 70),

              OutlinedButton.icon(
                onPressed: () {
                  context.go("/home");
                },
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                label: const Text("Geri Dönünüz",
                    style: TextStyle(fontSize: 16)),
              ),
              
              
            ],
          ),
        ),
      ),
    );
  }
}