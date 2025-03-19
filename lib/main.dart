import 'package:flutter/material.dart';
import 'profil_page.dart'; // Impor ProfilePage

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profil Saya',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ProfilePage(), // Ganti HomePage() dengan ProfilePage()
    );
  }
}
