import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Data untuk ListView
  final List<Map<String, String>> data = [
    {"name": "Nasywa", "hobby": "Reading"},
    {"name": "Fahliz", "hobby": "Painting"},
    {"name": "Shofa", "hobby": "Gardening"},
    {"name": "Rama", "hobby": "Cooking"},
    {"name": "Andri", "hobby": "Traveling"},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan_6',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView with Cards'),
        ),
        body: Center(
          // Gunakan ListView.builder
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                    // Tampilkan inisial nama sebagai placeholder untuk foto
                    child: Text(data[index]["name"]![0]),
                  ),
                  title: Text(data[index]["name"]!),
                  subtitle: Text(data[index]["hobby"]!),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
