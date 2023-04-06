import 'package:coba_flutter/pages/beranda_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DaftarDiri extends StatelessWidget {
  const DaftarDiri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          alignment: Alignment.center,
          child: Column(children: [
            const SizedBox(
              height: 75,
            ),
            Container(
              padding: const EdgeInsets.only(right: 160),
              child: const Text(
                "Daftar Sini",
                style: TextStyle(
                    color: Color(0xff65E096),
                    fontSize: 30,
                    fontFamily: 'Imprima'),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 10),
              child: const Text(
                "Ayo daftar dan bergabung dengan kami !",
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
            SvgPicture.asset("assets/icons/ic_daftar1.svg"),
            Container(
              height: 40,
              padding: const EdgeInsets.only(right: 40, left: 40),
              child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    hintText: "Masukan nama lengkap anda",
                    labelText: "Nama Lengkap",
                    labelStyle: const TextStyle(fontSize: 12),
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
              height: 15,
            ),
            Container(
              height: 40,
              padding: const EdgeInsets.only(right: 40, left: 40),
              child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    labelText: "Email Anda",
                    labelStyle: const TextStyle(fontSize: 12),
                    icon: const Icon(Icons.email),
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
              height: 40,
              padding: const EdgeInsets.only(right: 40, left: 40),
              child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    labelText: "Password Anda",
                    labelStyle: const TextStyle(fontSize: 12),
                    icon: const Icon(Icons.lock),
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
              height: 40,
              padding: const EdgeInsets.only(right: 40, left: 40),
              child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    labelText: "Ulangi password Anda",
                    labelStyle: const TextStyle(fontSize: 12),
                    icon: const Icon(Icons.lock),
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
                      MaterialPageRoute(builder: (context) => const Beranda()),
                    );
                  },
                  child: const Text(
                    "Daftar",
                    style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 24,
                        fontFamily: 'Imprima'),
                  ),
                )),
            const SizedBox(
              height: 15,
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
                      "Sudah punya akun ? ",
                      style: TextStyle(
                          color: Color(0xff808080),
                          fontSize: 12,
                          fontFamily: 'Imprima'),
                    ),
                    Text(
                      "Masuk Sekarang",
                      style: TextStyle(
                          color: Color(0xff2400FF),
                          fontSize: 12,
                          fontFamily: 'Imprima'),
                    ),
                  ],
                )),
          ]),
        ));
  }
}
