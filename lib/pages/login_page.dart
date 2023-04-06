import 'package:coba_flutter/pages/daftar_page.dart';
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
              const SizedBox(
                height: 75,
              ),
              Container(
                padding: const EdgeInsets.only(right: 120),
                child: const Text(
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
                child: const Text(
                  "Login untuk melanjutkan",
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 16,
                      fontFamily: 'Imprima'),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SvgPicture.asset("assets/icons/ic_login.svg"),
              const SizedBox(
                height: 35,
              ),
              Container(
                height: 50,
                padding: const EdgeInsets.only(right: 40, left: 40),
                child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(10),
                      hintText: "Masukan nama lengkap anda",
                      labelText: "Nama Lengkap",
                      labelStyle: const TextStyle(fontSize: 14),
                      icon: const Icon(Icons.people),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    validator: (String? value) {
                      if (value != null && value.isEmpty) {
                        return "Username/Email tidak boleh kosong";
                      }
                      return null;
                    }),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                padding: const EdgeInsets.only(right: 40, left: 40),
                child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(10),
                      labelText: "Masukan password Anda",
                      labelStyle: const TextStyle(fontSize: 14),
                      icon: const Icon(Icons.security),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    validator: (String? value) {
                      if (value != null && value.isEmpty) {
                        return "Password tidak boleh kosong";
                      }
                      return null;
                    }),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                  padding: const EdgeInsets.only(left: 200),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      visualDensity: VisualDensity.compact,
                      minimumSize: const Size(0, 0),
                      textStyle: Theme.of(context).textTheme.bodySmall,
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Lupa Password ?",
                      style: TextStyle(
                          color: Color(0xff2400FF),
                          fontSize: 12,
                          fontFamily: 'Imprima'),
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: 180,
                  height: 50,
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
                            builder: (context) => const DaftarDiri()),
                      );
                    },
                    child: const Text(
                      "Masuk",
                      style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 24,
                          fontFamily: 'Imprima'),
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity: VisualDensity.compact,
                    minimumSize: const Size(0, 0),
                    textStyle: Theme.of(context).textTheme.bodySmall,
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Belum punya akun ? ",
                        style: TextStyle(
                            color: Color(0xff808080),
                            fontSize: 12,
                            fontFamily: 'Imprima'),
                      ),
                      Text(
                        "Daftar Sekarang",
                        style: TextStyle(
                            color: Color(0xff2400FF),
                            fontSize: 12,
                            fontFamily: 'Imprima'),
                      ),
                    ],
                  )),
            ],
          ),
        ));
  }
}
