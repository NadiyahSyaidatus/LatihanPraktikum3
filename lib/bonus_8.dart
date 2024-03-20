import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'bonus 8',
      home: Scaffold(
        body: ProfilePage(),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 200,
              color: Colors.blue,
              child: Image.asset(
                'assets/banner.jpeg',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            SizedBox(
              height: 100,
              child: Container(
                color: Colors.transparent,
              ),
            ),
          ],
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: AppBar(
            backgroundColor:
                Colors.grey.withOpacity(0.3), // Background transparan abu-abu
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey
                      .withOpacity(0.5), // Background transparan abu-abu
                  radius: 20,
                  child: IconButton(
                    onPressed: () {
                      // Fungsi untuk kembali ke layar sebelumnya
                    },
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                  ),
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey
                          .withOpacity(0.5), // Background transparan abu-abu
                      radius: 20,
                      child: IconButton(
                        onPressed: () {
                          // Fungsi untuk menampilkan menu pencarian
                        },
                        icon: Icon(Icons.search),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                        width: 10), // Menambahkan sedikit jarak di antara ikon
                    CircleAvatar(
                      backgroundColor: Colors.grey
                          .withOpacity(0.5), // Background transparan abu-abu
                      radius: 20,
                      child: IconButton(
                        onPressed: () {
                          // Fungsi untuk menampilkan menu titik tiga
                        },
                        icon: Icon(Icons.more_vert),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 150,
          left: 16,
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
              shape: BoxShape.circle,
            ),
            child: ClipOval(
              child: Image.asset(
                'assets/profil.jpeg',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          top: 250,
          left: 16,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'UPN Veteran Jawa Timur',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 1),
                Text(
                  '@upnvjt_official',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'AKUN RESMI UPN "VETERAN" JAWA TIMUR',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  'Dikelola oleh Humas UPN "Veteran" Jawa Timur Kampus Bela',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  'Negara',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  'Translate bio',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 215,
          right: 16,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              'Follow',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 0, 0, 0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
