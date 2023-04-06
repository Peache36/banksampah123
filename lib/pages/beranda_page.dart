import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text("Hai, Sultan Fahkih"),
          titleTextStyle: const TextStyle(fontSize: 14, fontFamily: "Inder"),
          elevation: 0,
          leading: const Icon(Icons.person),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.notifications, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(children: [
          Container(
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: const Color(0xffdfeaef),
                borderRadius: BorderRadius.circular(17)),
            padding: const EdgeInsets.only(
                left: 10, right: 100, top: 10, bottom: 100),
            child: const Text(
              "Poin : 6000",
              style: TextStyle(
                  color: Colors.black, fontSize: 24, fontFamily: 'Imprima'),
              textAlign: TextAlign.left,
            ),
          ),
          SvgPicture.asset("assets/icons/ic_transfer.svg"),
          Container(
            padding: const EdgeInsets.only(right: 40, left: 40),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "Transfer",
                style: TextStyle(
                    color: Colors.black, fontSize: 14, fontFamily: 'Imprima'),
              ),
            ),
          ),
        ]));
  }
}
