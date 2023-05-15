import 'package:coba_flutter/pages/basah_basih_page.dart';
import 'package:coba_flutter/pages/beranda_page.dart';
import 'package:coba_flutter/pages/buku_tabungan_page.dart';
import 'package:coba_flutter/pages/daftar_page.dart';
import 'package:coba_flutter/pages/jemput_sampah_page.dart';
import 'package:coba_flutter/pages/landing_page.dart';
import 'package:coba_flutter/pages/store_sampah_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    '/landing': (BuildContext context) => const LandingPage(),
    '/home': (BuildContext context) => const HomePage(),
    '/profile': (BuildContext context) => const DaftarDiri(),
    '/market': (BuildContext context) => const StoreSampah(),
    '/setor': (BuildContext context) => JemputSampah(),
    '/tabungan': (BuildContext context) => BukuTabungan(),
    '/basahbasih': (BuildContext context) => const BasahBasih(),
  };
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: routes,
      initialRoute: '/landing',
    );
  }
}
