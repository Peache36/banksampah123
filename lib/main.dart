import 'package:coba_flutter/pages/beranda_page.dart';
import 'package:coba_flutter/pages/daftar_page.dart';
import 'package:coba_flutter/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    '/landing': (BuildContext context) => const LandingPage(),
    '/home': (BuildContext context) => const HomePage(),
    '/profile': (BuildContext context) => const DaftarDiri(),
    '/market': (BuildContext context) => const DaftarDiri(),
    '/setor': (BuildContext context) => const DaftarDiri(),
    '/tabungan': (BuildContext context) => const DaftarDiri(),
    '/basahbasih': (BuildContext context) => const DaftarDiri(),
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
