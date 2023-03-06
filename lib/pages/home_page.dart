import 'package:coba_flutter/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(
                height: 95,
              ),
              Image.asset("assets/images/im_landing.png"),
              SizedBox(
                height: 35,
              ),
              Container(
                padding: const EdgeInsets.only(right: 49, left: 52),
                child: Text(
                  "Hai orang baik. Selamat datang di aplikasi Bank Sampah Sidomulyo 123 !",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontFamily: 'Imprima'),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                  width: 260,
                  height: 60,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xff65E096),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        // DetailPage adalah halaman yang dituju
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Text(
                      "Masuk",
                      style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 30,
                          fontFamily: 'Imprima'),
                    ),
                  )),
              SizedBox(
                height: 15,
              ),
              Container(
                  width: 260,
                  height: 60,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xffC3D9CC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Daftar",
                      style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 30,
                          fontFamily: 'Imprima'),
                    ),
                  ))
            ],
          ),
        ));
  }
}
