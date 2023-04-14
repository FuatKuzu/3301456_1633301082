import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'login_page.dart';
import 'package:sea/screens/profile.dart';

class Product_Detail extends StatefulWidget {
  Product_Detail({Key? key, required this.product, this.account})
      : super(key: key);
  final Map? product;
  String? account;

  @override
  State<Product_Detail> createState() => _Product_DetailState();
}

_launchURLFace() async {
  const url = 'https://tr-tr.facebook.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLInsta() async {
  const url = 'https://www.instagram.com//';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLTwitter() async {
  const url = 'https://twitter.com/?lang=tr';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLYoutube() async {
  const url = 'https://www.youtube.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Product_DetailState extends State<Product_Detail> {
  var _height = 500.0;
  var _width = 440;

  @override
  Widget build(BuildContext context) {
    var product_price = double.parse(widget.product!['price']);

    debugShowCheckedModeBanner:
    false;
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
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(color: Colors.blue.shade100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              decoration: BoxDecoration(
                color: Colors.blueAccent.shade100,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(children: [
                Padding(padding: EdgeInsets.only(top: 20)),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.asset(
                    widget.product!['images'],
                    width: _width - 70.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                SizedBox(
                  width: _width - 100.0,
                  child: Text(
                    widget.product!['title'],
                    maxLines: 2,
                    style: GoogleFonts.ptSerif(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                SizedBox(
                  width: _width - 100.0,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 65,
                        child: Column(
                          children: [
                            Text(
                              'Ürün',
                              style: GoogleFonts.ptSerif(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'Detayı',
                              style: GoogleFonts.ptSerif(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                      VerticalDivider(
                        width: 20,
                      ),
                      SizedBox(
                        width: 240,
                        child: Column(
                          children: [
                            Text(
                              widget.product!['detail'],
                              maxLines: 6,
                              style: GoogleFonts.ptSerif(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.all(3.0)),
                SizedBox(
                  width: _width - 80.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Fiyat:',
                        style: GoogleFonts.ptSerif(
                          fontSize: 26,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(right: 10.0)),
                      Text(
                        '$product_price',
                        style: GoogleFonts.ptSerif(
                          fontSize: 26,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(right: 10)),
                      Text(
                        'Tl',
                        style: GoogleFonts.ptSerif(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1.0),
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(primary: Colors.green),
                    child: Text(
                      'Sepete Ekle',
                      style: GoogleFonts.ptSerif(
                          fontSize: 22, color: Colors.amber),
                    )),
                Padding(padding: EdgeInsets.only(bottom: 15))
              ]),
            )
          ],
        ),
      ),
    );
  }
}
