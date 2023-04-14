import 'package:google_fonts/google_fonts.dart';
import 'package:sea/screens/about_us.dart';
import 'package:sea/screens/login_page.dart';
import 'package:sea/screens/profile.dart';
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
  @override
  Widget build(BuildContext context) {
    if (widget.account.hashCode != 0) {
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
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                tooltip: 'Sepetiniz',
                onPressed: () {},
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    alignment: Alignment.center,
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Login_Page()),
                          );
                        },
                        child: Text(
                          'Giriş Yap',
                          style: GoogleFonts.ptSerif(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        )),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                // padding: EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.person),
                      tooltip: 'Profilim',
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => My_Profile(
                                account: widget.account,
                              ),
                            ));
                      },
                    ),
                    Text(widget.account.toString().toUpperCase())
                  ],
                ),
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
          bottomNavigationBar: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => About_Page()));
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
          ));
    } else {
      return Scaffold(
          appBar: AppBar(
            title: Text(
              'Derin Sular',
              style: GoogleFonts.ptSerif(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                tooltip: 'Sepetiniz',
                onPressed: () {},
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    alignment: Alignment.center,
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Login_Page()),
                          );
                        },
                        child: Text(
                          'Giriş Yap',
                          style: GoogleFonts.ptSerif(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        )),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    icon: const Icon(Icons.person),
                    tooltip: 'Profilim',
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Giriş Yapmadınız.')));
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login_Page(),
                          ));
                    },
                  ),
                ],
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
          bottomNavigationBar: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => About_Page()));
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
          ));
    }
  }
}
