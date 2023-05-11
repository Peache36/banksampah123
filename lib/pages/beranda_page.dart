import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 16.0),
          CircleAvatar(
            radius: 50.0,
          ),
          SizedBox(height: 16.0),
          Text(
            'John Doe',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            'Saldo: \$500',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.all(16.0),
              childAspectRatio: 1.5,
              children: <Widget>[
                buildMenuItem(context, "assets/icons/ic_delivery-truck.svg",
                    'Setor Sampah', '/setor', Color.fromRGBO(101, 224, 150, 1)),
                buildMenuItem(
                    context,
                    "assets/icons/ic_book.svg",
                    'Buku Tabungan',
                    '/tabungan',
                    Color.fromRGBO(255, 188, 14, 1)),
                buildMenuItem(context, "assets/icons/ic_market.svg", 'Market',
                    '/market', Color.fromRGBO(245, 97, 50, 1)),
                buildMenuItem(
                    context,
                    "assets/icons/ic_chat.svg",
                    'Basah Basih',
                    '/basahbasih',
                    Color.fromRGBO(255, 188, 14, 1)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMenuItem(BuildContext context, String svgAsset, String title,
      String routeName, Color color) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(routeName);
      },
      child: Card(
        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(svgAsset, height: 60),
            SizedBox(height: 8.0),
            Text(title, style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
