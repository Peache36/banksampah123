import 'package:flutter/material.dart';

class BukuTabungan extends StatefulWidget {
  @override
  _BukuTabunganState createState() => _BukuTabunganState();
}

class _BukuTabunganState extends State<BukuTabungan> {
  List<Map<String, dynamic>> _items = [
    {'points': 100, 'date': '2022-01-01'},
    {'points': 200, 'date': '2022-01-02'},
    {'points': 300, 'date': '2022-01-03'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History Tabungan'),
      ),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              title: Text('Poin: ${_items[index]['points']}'),
              subtitle: Text('Tanggal: ${_items[index]['date']}'),
            ),
          );
        },
      ),
    );
  }
}
