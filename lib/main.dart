// lib/main.dart
import 'package:flutter/material.dart';
// OLUŞTURDUĞUMUZ KLASÖRÜ IMPORT EDİYORUZ:
import 'lib/widgets/home_widgets.dart'; 

void main() {
  runApp(const CatMatchApp());
}

class CatMatchApp extends StatelessWidget {
  const CatMatchApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CatMatch',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFFBF8F6),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF9E4E37),
          primary: const Color(0xFF9E4E37),
        ),
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // widgets/home_widgets.dart dosyasından çağrılan metotlar:
      appBar: buildHomeAppBar(context), 
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              buildHeroCard(context),
              const SizedBox(height: 24),
              buildSearchBar(),
              const SizedBox(height: 32),
              buildCategoriesSection(),
              const SizedBox(height: 32),
              buildNewCatalogSection(),
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: const Text('ab', style: TextStyle(color: Colors.white, fontSize: 20)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Ana Sayfa'),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: 'Katalog'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: 'Favoriler'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profil'),
        ],
      ),
    );
  }
}