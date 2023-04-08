import 'package:google_fonts/google_fonts.dart';
import 'package:sea/screens/about_us.dart';
import 'package:sea/screens/login_page.dart';
import 'package:sea/widgets/infos.dart';
import 'package:sea/widgets/urun.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Main_Screen extends StatefulWidget {
  // const Main_Screen({super.key});
  String? account;
  String? password;
  Main_Screen({this.account, this.password});

  @override
  State<Main_Screen> createState() => _Main_ScreenState();
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

@override
Widget build(BuildContext context) {
  // TODO: implement build
  throw UnimplementedError();
}

class _Main_ScreenState extends State<Main_Screen> {
  var productImage = [
    "lib/assets/regulator01.jpg",
    "lib/assets/regulator02.jpg",
    "lib/assets/regulator03.jpg",
    "lib/assets/regulator04.jpg",
    "lib/assets/regulator05.jpg",
    "lib/assets/dalis_bilgisari01.jpg"
        "lib/assets/dalis_bilgisari02.jpg"
        "lib/assets/dalis_bilgisari03.jpg"
        "lib/assets/dalis_elbise01.jpg"
        "lib/assets/dalis_elbise02.jpg"
        "lib/assets/dalis_elbise03.jpg"
        "lib/assets/dalis_elbise04.jpg"
        "lib/assets/dalis_elbise05.jpg"
        "lib/assets/dalis_elbise06.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Derin Sular'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.person),
            tooltip: 'Show Snackbar',
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Login_Page(),
                  ));
              //  ScaffoldMessenger.of(context).showSnackBar(
              //       const SnackBar(content: Text('This is a snackbar')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Next page'),
                    ),
                    body: const Center(
                      child: Text(
                        'This is the next page',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  );
                },
              ));
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.blue.shade100),
            padding: EdgeInsets.only(top: 15),
            alignment: AlignmentDirectional.center,
            child: Wrap(
                spacing: 15.0,
                runSpacing: 15.0,
                direction: Axis.horizontal,
                children: productsInfo
                    .map(
                      (e) => ProductItem(product: e),
                    )
                    .toList()),
          )
        ],
      ),
      /*   children: productsInfo
              .map(
                (e) => ProductItem(category: e),
              )
              .toList()),*/
      bottomNavigationBar: BottomAppBar(
        child: Row(
          // mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => About_Page()));
                },
                child: Row(
                  children: [
                    Text(
                      'Hakkımızda',
                      style: GoogleFonts.openSans(
                          fontSize: 18, color: Colors.blue.shade400),
                    )
                  ],
                )),
            IconButton(
              onPressed: _launchURLFace,
              icon: const FaIcon(
                FontAwesomeIcons.facebook,
                color: Colors.blue,
                size: 18,
              ),
            ),
            IconButton(
              onPressed: _launchURLInsta,
              icon: const FaIcon(
                FontAwesomeIcons.instagram,
                color: Colors.orange,
                size: 18,
              ),
            ),
            IconButton(
              onPressed: _launchURLTwitter,
              icon: const FaIcon(
                FontAwesomeIcons.twitter,
                color: Colors.blueGrey,
                size: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
