import 'package:flutter/material.dart';
import 'detail_page.dart';
import 'next_page.dart'; // Impor halaman selanjutnya

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profil Saya')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailPage()),
                );
              },
              child: Hero(
                tag: 'profile-picture',
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/Arul.jpg'),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Syahrul Yovi Distyanto',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Flutter Developer | UI Designer',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(height: 30),
            AnimatedOpacityButton(),
          ],
        ),
      ),
    );
  }
}

// Widget Animasi Sederhana: Tombol dengan Efek Opacity & Navigasi
class AnimatedOpacityButton extends StatefulWidget {
  @override
  _AnimatedOpacityButtonState createState() => _AnimatedOpacityButtonState();
}

class _AnimatedOpacityButtonState extends State<AnimatedOpacityButton> {
  double _opacity = 1.0;

  void _toggleOpacity() {
    setState(() {
      _opacity = _opacity == 1.0 ? 0.5 : 1.0;
    });

    // Navigasi ke NextPage setelah tombol ditekan
    Future.delayed(Duration(milliseconds: 300), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => NextPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: Duration(seconds: 1),
      opacity: _opacity,
      child: ElevatedButton(
        onPressed: _toggleOpacity,
        child: Text('Klik Aku!'),
      ),
    );
  }
}
