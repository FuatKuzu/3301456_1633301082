import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sea/screens/login_page.dart';

class About_Page extends StatefulWidget {
  const About_Page({super.key});

  @override
  State<About_Page> createState() => _About_PageState();
}

class _About_PageState extends State<About_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Derin Sular',
          style: GoogleFonts.ptSerif(
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: <Widget>[],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blue.shade300,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(children: [
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100.0),
                      child: Image.asset(
                        'lib/assets/scuba.jpg',
                        height: 350,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  //  Padding(padding: EdgeInsets.only(top: 5)),
                  Text(
                    'Derin Sular 1 Nisan 2023 tarihinde Ordu şehrinde kurulmuştur.',
                    style: GoogleFonts.lato(fontSize: 16),
                  ),
                  Padding(padding: EdgeInsets.only(top: 5)),
                  Text(
                    'Firmamız scuba diving sporu için en iyi ekipmanları \n\t müşterilerize sunmak için kurulmuştur.',
                    style: GoogleFonts.lato(fontSize: 16),
                  ),
                  Divider(indent: 0.5),
                  Text(
                    'İletişim Tel:\t\t90505050508',
                    style: GoogleFonts.lato(fontSize: 16),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    'İletişim Mail:\t\tderinsular@mail.com',
                    style: GoogleFonts.lato(fontSize: 16),
                  ),
                  Text(
                    'Adres:\t\tOrdu/Altınordu/Nizametin Mahallesi',
                    style: GoogleFonts.lato(fontSize: 16),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 15)),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
