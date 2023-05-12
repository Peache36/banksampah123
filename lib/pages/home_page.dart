import 'package:coba_flutter/pages/daftar_page.dart';
import 'package:coba_flutter/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              const SizedBox(
                height: 95,
              ),
              Image.asset("assets/images/im_landing.png"),
              const SizedBox(
                height: 35,
              ),
              Container(
                padding: const EdgeInsets.only(right: 49, left: 52),
                child: Text(
                  "Hai orang baik. Selamat datang di aplikasi Bank Sampah Sidomulyo 123 !",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              SizedBox(
                  width: 260,
                  height: 60,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xff65E096),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        // DetailPage adalah halaman yang dituju
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                      );
                    },
                    child: Text(
                      "Masuk",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                  width: 260,
                  height: 60,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xffC3D9CC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        // DetailPage adalah halaman yang dituju
                        MaterialPageRoute(
                            builder: (context) => const DaftarDiri()),
                      );
                    },
                    child: Text(
                      "Daftar",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ));
  }
}
