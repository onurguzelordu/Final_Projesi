import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_decoration/widgets/bottom_menu.dart'; 


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  
  get mainAxisAlignment => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Profiliniz"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
      Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
    

                  const CircleAvatar(
                    radius: 50,
                    
                    ),

                    const SizedBox(height: 5),
                    TextButton(onPressed:() {
                    }, child: const Text("Fotoğraf Yükleyiniz"),),
                 
                  const SizedBox(height: 10),


                  const ListTile(
                    leading: Icon(Icons.person),
                    title: Text("İsim Soyisim"),
                    
                  ),
                  const ListTile(
                    leading: Icon(Icons.email),
                    title: Text("E-posta Adresiniz"),
                  ),
                const SizedBox(height: 5),

                      Row(
                  mainAxisAlignment: MainAxisAlignment.start, // Sol hizalama
                  children: [
                    TextButton(
                      onPressed: () {
                      },
                      child: const Text("E-posta Guncelleme"),
                    ),
                  ],
                ),



                 const  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text("Telefon Numaraniz"),
                  ),
                  const SizedBox(height: 5),
          Row(
                  mainAxisAlignment: MainAxisAlignment.start, // Sol hizalama
                  children: [
                    TextButton(
                      onPressed: () {
                      },
                      child: const Text("Telefon Numarasi Guncelleme"),
                    ),
                  ],
                ),
                  const ListTile(
                    leading: Icon(Icons.location_on),
                    title: Text("Adresiniz"),
                  ),
                  const SizedBox(height: 5),
          Row(
                  mainAxisAlignment: MainAxisAlignment.start, // Sol hizalama
                  children: [
                    TextButton(
                      onPressed: () {
                      },
                      child: const Text("Adres Guncelleme"),
                    ),
                  ],
                ),

                  


Column(
  children: [
                  ListTile(
                    leading: const Icon(Icons.arrow_outward_rounded),
                    trailing: TextButton(onPressed: () {
                    }, child: const Text("Siparisleriniz"))
                  ),
                  ListTile(
                    leading: const Icon(Icons.live_help_sharp),
                    trailing: TextButton(onPressed: () {
                    }, child: const Text("Geçmiş Destek Masasi Görüşmeleriniz"))
                  ),
                  ListTile(
                    leading: const Icon(Icons.local_shipping_outlined),
                    trailing: TextButton(onPressed: () {
                    }, child: const Text("Kargo Takibi"))
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    trailing:
                    
                    TextButton(onPressed: () {
                    }, child: const Text("Ayarlar"))
                  ),

  ],
),

                ],
              ),
            ),
          ),
          const SizedBox(height: 24),
          FilledButton.icon(
            onPressed: () {
                context.go("/home");
            },
            icon: const Icon(Icons.logout),
            label: const Text("Cikis Yapiniz", style: TextStyle(color: Colors.black),),
            style: FilledButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          
        ],

      ),     
bottomNavigationBar: const BottomMenu(),
    );
    
  }
}