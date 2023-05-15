import 'package:coba_flutter/pages/daftar_page.dart';
import 'package:coba_flutter/pages/setting_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Hai, Sultan Fahkih"),
        titleTextStyle: GoogleFonts.montserrat(
          textStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        elevation: 0,
        leading: const Icon(Icons.person),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingProfile()),
              );
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 16.0),
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: FractionallySizedBox(
                                  widthFactor: 0.9,
                                  child: Text(
                                    'Saldo: Rp 100.000',
                                    style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      // Kodemu saat tombol "Transfer Uang" ditekan
                                    },
                                    child: Column(
                                      children: [
                                        SvgPicture.asset(
                                          "assets/icons/ic_card.svg",
                                        ),
                                        SizedBox(height: 8.0),
                                        Text(
                                          'Transfer Uang',
                                          style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const DaftarDiri()),
                                      );
                                      // Kodemu saat tombol "Tarik Uang" ditekan
                                    },
                                    child: Column(
                                      children: [
                                        SvgPicture.asset(
                                          "assets/icons/ic_wallet.svg",
                                        ),
                                        SizedBox(height: 8.0),
                                        Text(
                                          'Tarik Uang',
                                          style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              width: double.infinity,
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(223, 234, 239, 1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 16.0),
                      Image.asset(
                        "assets/images/im_trash.png",
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

          // CircleAvatar(
          //   radius: 50.0,
          // ),
          // SizedBox(height: 16.0),
          // Text(
          //   'John Doe',
          //   style: TextStyle(
          //     fontSize: 24.0,
          //     fontWeight: FontWeight.bold,
          //   ),
          // ),
          // SizedBox(height: 8.0),
          // Text(
          //   'Saldo: \$500',
          //   style: TextStyle(
          //     fontSize: 18.0,
          //     fontWeight: FontWeight.bold,
          //   ),
          // ),
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
            SvgPicture.asset(svgAsset),
            SizedBox(height: 8.0),
            Text(
              title,
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
