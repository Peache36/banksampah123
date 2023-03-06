import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(
                height: 75,
              ),
              Container(
                padding: const EdgeInsets.only(right: 120),
                child: Text(
                  "Yuk Login Dulu,",
                  style: TextStyle(
                      color: Color(0xff65E096),
                      fontSize: 30,
                      fontFamily: 'Imprima'),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(right: 140),
                child: Text(
                  "Login untuk melanjutkan",
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 16,
                      fontFamily: 'Imprima'),
                  textAlign: TextAlign.left,
                ),
              ),
              SvgPicture.asset("assets/icons/ic_login.svg"),
              SizedBox(
                height: 35,
              ),
              Container(
                padding: const EdgeInsets.only(right: 40, left: 40),
                child: TextFormField(
                    decoration: new InputDecoration(
                      hintText: "Masukan nama lengkap anda",
                      labelText: "Nama Lengkap",
                      icon: Icon(Icons.people),
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(30)),
                    ),
                    validator: (String? value) {
                      if (value != null && value.isEmpty) {
                        return "Username/Email tidak boleh kosong";
                      }
                      return null;
                    }),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.only(right: 40, left: 40),
                child: TextFormField(
                    obscureText: true,
                    decoration: new InputDecoration(
                      labelText: "Masukan password Anda",
                      icon: Icon(Icons.security),
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(30)),
                    ),
                    validator: (String? value) {
                      if (value != null && value.isEmpty) {
                        return "Password tidak boleh kosong";
                      }
                      return null;
                    }),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                  width: 180,
                  height: 50,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xff65E096),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Masuk",
                      style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 24,
                          fontFamily: 'Imprima'),
                    ),
                  )),
            ],
          ),
        ));
  }
}
