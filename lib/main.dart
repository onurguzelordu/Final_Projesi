import 'package:flutter/material.dart';

void main() {
  runApp(const HomeStyle());
}

class HomeStyle extends StatelessWidget {
  const HomeStyle({super.key});

  final List<String> imageUrls = const [
    "https://cdn.dsmcdn.com/ty1462/product/media/images/prod/QC/20240805/12/8421301d-e917-3e95-b07d-635b7de87a5a/1_org_zoom.jpg",
    "https://m.media-amazon.com/images/I/717yZN1f6bL._AC_UF1000,1000_QL80_.jpg",
    "https://sc04.alicdn.com/kf/Ha35b3662f2314e578ee628b92de127eeX.jpg",
    "https://m.media-amazon.com/images/I/81fmhkLY+kL.jpg",
    "https://static.ticimax.cloud/cdn-cgi/image/width=540,quality=99/37144/uploads/urunresimleri/buyuk/6-katli-jut-dolap-ici-duzenleyici-21-x--b249-.jpg"
  ];

  final List<String> productNames = const [
    "Sandalye",
    "Tepsi Sehpa",
    "Palmiye Lambader",
    "Puf Koltuk",
    "Dolap İçi Organizeri"
  ];

  final List<String> productDescriptions = const [
    "Gri renkli ve Şık tasarıma sahip",
    "Sade görünümlü",
    "Egzotik bir atmosfer yaratan lambader",
    "Konforlu ve rahat kullanıma sahip",
    "Uzun ömürlü kullanım ve pratik"
  ];

  final List<double> productPrices = const [
    99.99,
    149.99,
    89.99,
    199.99,
    59.99,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer:  Drawer(
          backgroundColor: Colors.white,
  child: Column(
    children: [
      DrawerHeader(
        padding: EdgeInsets.all(60.0),
        child: Text(
          'Hoş Geldiniz',
          style: TextStyle(
            color: Colors.brown,
            fontSize: 30

          ),
        ),
        
      ),
      Expanded(
        child: ListView(
          padding: EdgeInsets.zero, // Varsayılan padding'i sıfırla
          children: [
            ListTile(
              leading: IconButton(
                icon: Icon(Icons.login), // Giriş simgesi
                onPressed: () {
                  // Giriş yapma işlemleri burada yapılabilir
                },
              ),
              title: Text('Giriş Yapınız/Kayıt Olunuz'),
              textColor: Colors.black,
              onTap: () {
                // Giriş yapma veya kayıt olma işlemleri burada yapılabilir
              },
            ),
            ListTile(
              leading: IconButton(
                icon: Icon(Icons.store),// Mağaza simgesi
                onPressed: () {
                  // Mağaza işlemleri burada yapılabilir
                },
              ),
              title: Text('Mağazalar'),
              textColor: Colors.black,
              onTap: () {
                // Mağazalar sayfasına yönlendirme burada yapılabilir
              },
            ),
            ListTile(
              leading: IconButton(
                
                icon: Icon(Icons.contact_mail), // İletişim simgesi
                onPressed: () {
                  // İletişim işlemleri burada yapılabilir
                },
              
              ),
              title: Text('İletişim'),
              textColor: Colors.black,
              onTap: () {
                // İletişim sayfasına yönlendirme burada yapılabilir
              },
            ),

SizedBox(height: 20,),

ListTile(
title: Text('Masalar'),
textColor: Colors.black,
              trailing: Icon(Icons.arrow_forward), // Ok simgesi ekle
              onTap: () {
                // İletişim sayfasına yönlendirme burada yapılabilir
              },
),

ListTile(
title: Text('Lambaderler'),
textColor: Colors.black,
              trailing: Icon(Icons.arrow_forward), // Ok simgesi ekle
              onTap: () {
                // İletişim sayfasına yönlendirme burada yapılabilir
              },
),

ListTile(
title: Text('Sandalyeler'),
textColor: Colors.black,
              trailing: Icon(Icons.arrow_forward), // Ok simgesi ekle
              onTap: () {
                // İletişim sayfasına yönlendirme burada yapılabilir
              },
),


ListTile(
title: Text('Koltuklar'),
textColor: Colors.black,
              trailing: Icon(Icons.arrow_forward), // Ok simgesi ekle
              onTap: () {
                // İletişim sayfasına yönlendirme burada yapılabilir
              },
)


















          ],
        ),
      ),
    ],
  ),
),


        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            SizedBox(width: 20),
          ],
          title: Center(
            child: Text(
              'HomeDecoration',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Scrollbar(
          child: ListView.builder(
            itemCount: imageUrls.length,
            itemBuilder: (context, index) {
              final imageUrl = imageUrls[index];
              final name = productNames[index];
              final description = productDescriptions[index];
              final price = productPrices[index];

              return Card(
                margin: EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        child: Image.network(imageUrl),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(description),
                            Text(
                              '\$${price.toStringAsFixed(2)}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Sepete ekleme işlemi burada yapılabilir
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('$name sepete eklendi!')),
                          );
                        },
                        child: Text('Sepete Ekle'),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled, color: Colors.white),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contact_support_outlined, color: Colors.white),
              label: 'Help Desk',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_rounded, color: Colors.white),
              label: 'Profile',
            ),
          ],
          currentIndex: 0,
          backgroundColor: Colors.brown,
          onTap: (index) {
            // Implement button click logic here
          },
        ),
      ),
    );
  }
}
