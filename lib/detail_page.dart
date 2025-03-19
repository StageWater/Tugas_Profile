import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Profil')),
      body: Center(
        child: Hero(
          tag: 'profile-picture',
          child: Container( // ✅ Tambahkan "child:"
            width: 350, // Lebar gambar
            height: 500, // Tinggi gambar
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Arul.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
