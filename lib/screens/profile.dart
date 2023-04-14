import 'package:flutter/material.dart';
import 'package:sea/screens/login_page.dart';

class My_Profile extends StatefulWidget {
  My_Profile({super.key, this.account});
  String? account;
  @override
  State<My_Profile> createState() => _My_ProfileState();
}

class _My_ProfileState extends State<My_Profile> {
  @override
  Widget build(BuildContext context) {
    if (widget.account != null) {
      debugShowCheckedModeBanner:
      false;
      return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(12.0),
              child: Card(
                child: Column(children: [
                  Icon(
                    Icons.person,
                    size: 70,
                    color: Colors.black26,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsets.only(top: 20)),
                      Text('Kullanıcı Adı:'),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Text(widget.account.toString().toUpperCase()),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsets.only(top: 20)),
                      Text('Adres:'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsets.only(top: 20)),
                      Text('Telefon Numaarası:'),
                      Text('0555555555')
                    ],
                  )
                ]),
              ),
            )
          ],
        )),
      );
    } else
      return Login_Page();
  }
}
