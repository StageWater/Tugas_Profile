import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tentang Saya')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Foto Profil
            ClipRRect(
              borderRadius: BorderRadius.circular(10), // Sudut melengkung
              child: Image.asset(
                'assets/images/Arul.jpg',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),

            // Nama
            Text(
              'Syahrul Yovi Distyanto',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),

            // Pekerjaan
            Text(
              'Flutter Developer | UI Designer',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 20),

            // Deskripsi Diri
            Text(
              'Saya adalah seorang Flutter Developer dengan pengalaman dalam membangun aplikasi mobile yang responsif dan menarik. '
                  'Saya juga memiliki keahlian dalam desain UI/UX untuk menciptakan tampilan yang modern dan user-friendly.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 30),

            // Informasi Kontak
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.email, color: Colors.blue),
                SizedBox(width: 10),
                Text('syahrul@gmail.com', style: TextStyle(fontSize: 16)),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.phone, color: Colors.green),
                SizedBox(width: 10),
                Text('+62 812-3456-7890', style: TextStyle(fontSize: 16)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
