import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'bonus 7',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Goyek',
            style: TextStyle(
                color: Colors
                    .white), // Mengubah warna teks di appbar menjadi putih
          ),
          backgroundColor: Color.fromARGB(
              255, 64, 186, 78), // Ganti warna appbar menjadi hijau
        ),
        body: MenuGrid(),
      ),
    );
  }
}

class MenuItem {
  final String title;
  final String image;

  MenuItem({required this.title, required this.image});
}

class MenuGrid extends StatelessWidget {
  final List<MenuItem> menuItems = [
    MenuItem(title: 'GoRide', image: 'assets/goride.png'),
    MenuItem(title: 'GoCar', image: 'assets/gocar.png'),
    MenuItem(title: 'GoFood', image: 'assets/gofood.png'),
    MenuItem(title: 'GoSend', image: 'assets/gosend.png'),
    MenuItem(title: 'GoMart', image: 'assets/gomart.png'),
    MenuItem(title: 'GoPulsa', image: 'assets/gopulsa.png'),
    MenuItem(title: 'Check In', image: 'assets/checkin.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Your favorites',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {
                  // Tambahkan aksi untuk tombol edit di sini
                },
                child: Text(
                  'Edit',
                  style: TextStyle(
                      color: Color.fromARGB(255, 64, 186, 78),
                      fontWeight: FontWeight
                          .bold), // Mengubah warna teks tombol edit menjadi putih
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 255, 255,
                      255), // Mengubah warna latar belakang tombol edit
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        20.0), // Mengatur border radius tombol
                    side: BorderSide(color: Color.fromARGB(255, 64, 186, 78)),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(20),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, // Mengubah jumlah kolom menjadi 4
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 8.0,
            ),
            itemCount: menuItems.length,
            itemBuilder: (context, index) {
              return MenuItemWidget(
                  title: menuItems[index].title,
                  imagePath: menuItems[index].image);
            },
          ),
        ),
      ],
    );
  }
}

class MenuItemWidget extends StatelessWidget {
  final String title;
  final String imagePath;

  MenuItemWidget({required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          imagePath,
          height: 48,
          width: 48,
        ),
        SizedBox(height: 4),
        Text(
          title,
          style: TextStyle(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
