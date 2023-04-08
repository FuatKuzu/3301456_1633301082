import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sea/screens/main_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class Product_Detail extends StatefulWidget {
  const Product_Detail({Key? key, required this.product}) : super(key: key);
  final Map? product;

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
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
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
      body: SafeArea(
        /*  child: Container(
        height: MediaQuery.of(context).size.height / 2.5,
        // width: 500,

        decoration: BoxDecoration(
          color: Colors.blueAccent.shade100,
          borderRadius: BorderRadius.circular(20.0),
        ),*/
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: BoxDecoration(
                color: Colors.blueAccent.shade100,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.asset(
                    widget.product!['images'],
                    width: _height - 150,
                    height: _height - 150,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                    height: _height / 4,
                    width: 110,
                    child: Text(widget.product!['title'], maxLines: 2)),
                Padding(padding: EdgeInsets.all(3.0)),
                Text(widget.product!['price']),
                Padding(
                  padding: EdgeInsets.all(1.0),
                ),
                ElevatedButton(
                    onPressed: () {
                      /* Navigator.pop(context,
                      MaterialPageRoute(builder: (context) => Main_Screen()));*/
                    },
                    child: Text('Tıkla')),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
/*SafeArea(
        child: Container(
          decoration: BoxDecoration(color: Color.fromARGB(255, 112, 125, 190)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                flex: 3,
                fit: FlexFit.loose,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        'lib/assets/set01.jpg',
                        //  width: 140,
                        fit: BoxFit.cover,
                        width: 300,
                        // width: double.infinity,
                      ),
                    ),
                    //  Text('ürünad'),
                    //      Text('fiyat'),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    //  ElevatedButton(onPressed: () {}, child: Text('Tıkla')),
                  ],
                ),
              ),
              Flexible(
                  flex: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'ürün avdvddvvsd',
                        style: GoogleFonts.lato(fontSize: 48),
                      ),
                      Text(
                        'fiyat',
                        style: GoogleFonts.lato(fontSize: 48),
                      ),
                      ElevatedButton(onPressed: () {}, child: Text('Tıkla')),
                    ],
                  )),
              Flexible(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(color: Colors.pink),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: _launchURLFace,
                        icon: const FaIcon(
                          FontAwesomeIcons.facebook,
                          size: 12,
                        ),
                      ),
                      IconButton(
                        onPressed: _launchURLInsta,
                        icon: const FaIcon(
                          FontAwesomeIcons.instagram,
                          size: 12,
                        ),
                      ),
                      IconButton(
                        onPressed: _launchURLTwitter,
                        icon: const FaIcon(
                          FontAwesomeIcons.twitter,
                          size: 12,
                        ),
                      ),
                      IconButton(
                        onPressed: _launchURLYoutube,
                        icon: const FaIcon(
                          FontAwesomeIcons.youtube,
                          size: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),*/