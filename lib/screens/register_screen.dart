import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _surnameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  void _register() {
    if (_nameController.text.isEmpty ||
        _surnameController.text.isEmpty ||
        _phoneController.text.isEmpty ||
        _emailController.text.isEmpty ||
        _passwordController.text.isEmpty ||
        _confirmPasswordController.text.isEmpty||
        _addressController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Lütfen tüm bilgileri doldurunuz."),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.red,
          showCloseIcon: true,
        ),
      );
    } else if (_passwordController.text != _confirmPasswordController.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Şifreler eşleşmiyor."),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.red,
          showCloseIcon: true,
        ),
      );
    } else {
      // Kayıt işlemlerini burada gerçekleştirebilirsiniz
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Kayıt başarılı!"),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.green,
          showCloseIcon: true,
        ),
      );
      context.go('/login'); // Giriş sayfasına yönlendir
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
               
              const  Text(
                  "Home Decoration",
                  style: TextStyle(
                    color: Color.fromRGBO(141, 87, 63, 1),
                    fontWeight: FontWeight.w600, 
                    fontSize: 20,
                    
                    
                  ),
                ),
                const SizedBox(height: 60,),
              TextField(
                style: const TextStyle(color: Colors.brown), 
                controller: _nameController,
                decoration: const InputDecoration(
                  hintText: 'İsim',
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                style: const TextStyle(color: Colors.brown), 
                controller: _surnameController,
                decoration: const InputDecoration(
                  hintText: 'Soyisim',
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                style: const TextStyle(color: Colors.brown), 
                controller: _phoneController,
                decoration: const InputDecoration(
                  hintText: 'Telefon Numarası',
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                style: const TextStyle(color: Colors.brown), 
                controller: _emailController,
                decoration: const InputDecoration(
                  hintText: 'E-posta Adresi',
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                style: const TextStyle(color: Colors.brown), 
                controller: _addressController,
                decoration: const InputDecoration(
                  hintText: 'Adresiniz',
                ),
              ),

              const SizedBox(height: 16.0),
              TextField(
                style: const TextStyle(color: Colors.brown), 
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Şifre',
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                style: const TextStyle(color: Colors.brown), 
                controller: _confirmPasswordController,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Şifre Tekrar',
                ),
              ),
              const SizedBox(height: 24.0),

                const SizedBox(height: 60,),

              ElevatedButton(
                onPressed: _register,
                child: const Text('Kayıt Ol'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
