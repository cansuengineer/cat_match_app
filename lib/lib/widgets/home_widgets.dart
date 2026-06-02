// lib/widgets/home_widgets.dart
import 'package:flutter/material.dart';

// 1. APP BAR BİLEŞENİ
PreferredSizeWidget buildHomeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Row(
      children: [
        Icon(Icons.pets, color: Theme.of(context).primaryColor, size: 28),
        const SizedBox(width: 8),
        const Text(
          'CatMatch',
          style: TextStyle(
            color: Color(0xFF3E1F16),
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ],
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: CircleAvatar(
          backgroundColor: const Color(0xFFF1E4E0),
          radius: 20,
          child: Icon(Icons.person_outline, color: Theme.of(context).primaryColor),
        ),
      ),
    ],
  );
}

// 2. GÜNÜN IRKI (HERO) KARTIBİLEŞENİ
Widget buildHeroCard(BuildContext context) {
  return Container(
    height: 350,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(28),
      image: const DecorationImage(
        image: AssetImage('assets/bengal.jpg'),
        fit: BoxFit.cover,
      ),
    ),
    child: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Colors.black.withOpacity(0.6), Colors.transparent],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text('Günün Irkı', style: TextStyle(color: Colors.white70, fontSize: 14)),
              const SizedBox(height: 4),
              const Text(
                'The Exotic Bengal',
                style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'Oyuncu, enerjik ve vahşi görünümüyle dikkat çeken bir güzellik.',
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text('Keşfet'),
                    SizedBox(width: 8),
                    Icon(Icons.arrow_forward, size: 18),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

// 3. ARAMA ÇUBUĞU BİLEŞENİ
Widget buildSearchBar() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
    decoration: BoxDecoration(
      color: const Color(0xFFF3EFEF),
      borderRadius: BorderRadius.circular(30),
    ),
    child: const TextField(
      decoration: InputDecoration(
        icon: Icon(Icons.search, color: Colors.grey),
        hintText: 'Irk, özellik veya desen ara..',
        hintStyle: TextStyle(color: Colors.grey),
        border: InputBorder.none,
      ),
    ),
  );
}

// 4. POPÜLER KATEGORİLER BİLEŞENİ
Widget buildCategoriesSection() {
  final categories = [
    {'icon': Icons.content_cut, 'name': 'Uzun Tüylü', 'color': const Color(0xFF8B8A6B)},
    {'icon': Icons.medical_services_outlined, 'name': 'Hipoalerjenik', 'color': const Color(0xFFE4D5CD)},
    {'icon': Icons.toys_outlined, 'name': 'Oyuncu', 'color': const Color(0xFFDA8A67)},
    {'icon': Icons.home_outlined, 'name': 'Evcil', 'color': const Color(0xFF7F957F)},
  ];

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Popüler Kategoriler',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF3E1F16)),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Tümünü Gör', style: TextStyle(color: Color(0xFF9E4E37))),
          ),
        ],
      ),
      const SizedBox(height: 16),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: categories.map((cat) {
          final bool isLightColor = cat['color'] == const Color(0xFFE4D5CD);
          return Column(
            children: [
              Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                  color: cat['color'] as Color,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(
                  cat['icon'] as IconData,
                  size: 32,
                  color: isLightColor ? const Color(0xFF9E4E37) : Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Text(cat['name'] as String, style: const TextStyle(fontSize: 12, color: Color(0xFF3E1F16))),
            ],
          );
        }).toList(),
      ),
    ],
  );
}

// 5. YENİ KATALOG SEKSİYONU VE KARTLARI
Widget buildNewCatalogSection() {
  final cats = [
    {'name': 'Ragdoll', 'image': 'assets/ragdoll.jpg', 'tags': ['Uysal', 'Mavi Gözlü']},
    {'name': 'Sphynx', 'image': 'assets/sphynx.jpg', 'tags': ['Enerjik', 'Eşsiz']},
    {'name': 'Russian Blue', 'image': 'assets/russian_blue.jpg', 'tags': ['Zeki', 'Sessiz']},
    {'name': 'Maine Coon', 'image': 'assets/maine_coon.jpg', 'tags': ['Büyük', 'Dost Canlısı']},
  ];

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        'Yeni Katalog',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF3E1F16)),
      ),
      const SizedBox(height: 16),
      GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.8,
        ),
        itemCount: cats.length,
        itemBuilder: (context, index) {
          final cat = cats[index];
          return _buildCatCard(cat);
        },
      ),
    ],
  );
}

Widget _buildCatCard(Map<String, dynamic> cat) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10, offset: const Offset(0, 4)),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            child: Image.asset(cat['image'] as String, fit: BoxFit.cover, width: double.infinity),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(cat['name'] as String, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF3E1F16))),
              const SizedBox(height: 6),
              Wrap(
                spacing: 6,
                children: (cat['tags'] as List<String>).map((tag) {
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(color: const Color(0xFFF3EFEF), borderRadius: BorderRadius.circular(10)),
                    child: Text(tag, style: const TextStyle(fontSize: 10, color: Colors.grey)),
                  );
                }).toList(),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Detaylar', style: TextStyle(color: Colors.grey, fontSize: 12)),
                  Icon(Icons.arrow_forward, size: 14, color: Colors.grey),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}