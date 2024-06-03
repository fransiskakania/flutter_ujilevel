import 'package:flutter/material.dart';
// Make sure to import HomePage as well
import 'package:uji_level/pages/HomePage.dart';
import 'package:uji_level/pages/SplashScreen.dart';

import 'widgets/ItemPage.dart';
import 'widgets/ProfilPage.dart';

// import 'widgets/ItemPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Constructor is already correct

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => SplashScreen(),
        "HomePage": (context) => HomePage(),
        "ItemPage": (context) => ItemPage(title: '', description: '', price: '', imageIndex: 1,),
        '/profile': (context) => ProfilePage(), // tambahkan rute untuk halaman profil
         // Corrected arrow syntax
      },
    );
  }
}
