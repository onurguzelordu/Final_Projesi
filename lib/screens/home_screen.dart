import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:home_decoration/widgets/bottom_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<String> imageUrls = const [
    "https://cdn.dsmcdn.com/ty1462/product/media/images/prod/QC/20240805/12/8421301d-e917-3e95-b07d-635b7de87a5a/1_org_zoom.jpg",
    "https://m.media-amazon.com/images/I/717yZN1f6bL._AC_UF1000,1000_QL80_.jpg",
    "https://sc04.alicdn.com/kf/Ha35b3662f2314e578ee628b92de127eeX.jpg",
    "https://m.media-amazon.com/images/I/81fmhkLY+kL.jpg",
    "https://ae01.alicdn.com/kf/S70b80a27839546d8b3f58fc50cd777f9j.jpg_640x640q90.jpg"
        "https://mylamp.com.tr/UserFiles/Fotograflar/14404-gelincik-jut-dogal-hazeran-avize-50x33-cm-gelincik-hazeran-sarkit-lamba-8-png-gelincik-hazeran-sarkit-lamba-8.png",
    "https://ideacdn.net/idea/kt/51/myassets/products/082/atlas-genc-odasi-14.jpg?revision=1731761783",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTy8Ri8Mn0Ke2Qnyw5syP-cpzpeu48C5BC3NA&s",
    "https://img.vivense.com/720x480/images/d62d19e6a9d94748802549a1afd7a90f.jpg",
  ];

  final List<String> productNames = const [
    "Sandalye",
    "Tepsi Sehpa",
    "Palmiye Lambader",
    "Puf Koltuk",
    "Dolap İçi Organizeri",
    "Avize",
    "Atlas Üniteli Çalışma Masası",
    "Motto Yeşil Dolap",
    "Petek Raflar"
  ];

  final List<String> productDescriptions = const [
    "Gri renkli ve Şık tasarıma sahip",
    "Sade görünümlü",
    "Egzotik bir atmosfer yaratan lambader",
    "Konforlu ve rahat kullanıma sahip",
    "Uzun ömürlü kullanım ve pratik",
    "Doğadan gelen aydınlık...",
    "Çalışma alanınızı ferhalatacak.",
    "Şık tasarımı ve geniş depolama alanıyla evinizin havasını değiştirecek",
    "Duvarlarınızı güzelleştirmenin en şık yolu"
  ];

  final List<double> productPrices = const [
    99.99,
    149.99,
    89.99,
    199.99,
    59.99,
    40.00,
    300.00,
    320.00,
    30.00,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        elevation: 0,

        child: Column(
          children: [
            const DrawerHeader(
              padding: EdgeInsets.all(60.0),
              child: Text(
                'Hoş Geldiniz',
                style: TextStyle(color: Colors.brown, fontSize: 30),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero, // Varsayılan padding'i sıfırla
                children: [
                  ListTile(
                    leading: IconButton(
                      icon: const Icon(Icons.login), // Giriş simgesi
                      onPressed: () {
                        // Giriş yapma işlemleri burada yapılabilir
                      },
                    ),
                    title: const Text('Giriş Yapınız/Kayıt Olunuz'),
                    textColor: Colors.brown,
                    onTap: () {  context.go("/login");
                     
                    },
                  ),
                  ListTile(
                    leading: IconButton(
                      icon: const Icon(Icons.store), // Mağaza simgesi
                      onPressed: () {
                        // Mağaza işlemleri burada yapılabilir
                      },
                    ),
                    title: const Text('Mağazalar'),
                    textColor: Colors.brown,
                    onTap: () {
                      // Mağazalar sayfasına yönlendirme burada yapılabilir
                    },
                  ),
                  ListTile(
                    leading: IconButton(
                      icon: const Icon(Icons.favorite),
                      onPressed: () {
                        // Mağaza işlemleri burada yapılabilir
                      },
                    ),
                    title: const Text('Favori Ürünleriniz'),
                    textColor: Colors.brown,
                    onTap: () {
                      '/favourites';
                      // Mağazalar sayfasına yönlendirme burada yapılabilir
                    },
                  ),
                   ListTile(
                    leading: IconButton(
                      icon: const Icon(Icons.credit_card), // Mağaza simgesi
                      onPressed: () {
                        // Mağaza işlemleri burada yapılabilir
                      },
                    ),
                    title: const Text('Kart Bilgileriniz'),
                    textColor: Colors.brown,
                    onTap: () {
                      // Mağazalar sayfasına yönlendirme burada yapılabilir
                    },
                  ),
                  ListTile(
                    leading: IconButton(
                      icon: const Icon(Icons.contact_mail), // İletişim simgesi
                      onPressed: () {
                        // İletişim işlemleri burada yapılabilir
                      },
                    ),
                    title: const Text('İletişim'),
                    textColor: Colors.brown,
                    onTap: () {
                      // İletişim sayfasına yönlendirme burada yapılabilir
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    title: const Text('Masalar'),
                    textColor: Colors.brown,
                    trailing: const Icon(Icons.arrow_forward), // Ok simgesi ekle
                    onTap: () {
                      // İletişim sayfasına yönlendirme burada yapılabilir
                    },
                  ),
                  ListTile(
                    title: const Text('Lambaderler'),
                    textColor: Colors.brown,
                    trailing: const Icon(Icons.arrow_forward), // Ok simgesi ekle
                    onTap: () {
                      // İletişim sayfasına yönlendirme burada yapılabilir
                    },
                  ),
                  ListTile(
                    title: const Text('Sandalyeler'),
                    textColor: Colors.brown,
                    trailing: const Icon(Icons.arrow_forward), // Ok simgesi ekle
                    onTap: () {
                      // İletişim sayfasına yönlendirme burada yapılabilir
                    },
                  ),
                  ListTile(
                    title: const Text('Koltuklar'),
                    textColor: Colors.brown,
                    trailing: const Icon(Icons.arrow_forward), // Ok simgesi ekle
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
          IconButton(
              onPressed: () {
                context.go("/search");
              },
              icon: const Icon(Icons.search)),
          const SizedBox(width: 20),
        ],
        title: const Center(
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
              margin: const EdgeInsets.all(10),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.network(imageUrl),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(description),
                          Text(
                            '₺${price.toStringAsFixed(2)}',
                          style: const TextStyle(
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
                      child: const Text('Sepete Ekle'),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: const BottomMenu(),
    );
    
      
     
   
  }
}
