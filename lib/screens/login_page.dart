import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sea/screens/main_screen.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({super.key});

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  TextEditingController getAccount = new TextEditingController();
  TextEditingController getPassword = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blue.shade200,
          body: Center(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  //   width: double.infinity,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(26.0),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                              'Giriş Yap',
                              style: GoogleFonts.openSans(
                                textStyle:
                                    Theme.of(context).textTheme.headline4,
                                fontSize: 26,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Text(
                              'Kullanıcı Adı ',
                              style: GoogleFonts.openSans(
                                textStyle:
                                    Theme.of(context).textTheme.headline4,
                                fontSize: 26,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: TextField(
                              controller: getAccount,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(16.0)),
                                ),
                                labelText: 'Kullanıcı Adını Giriniz',
                                labelStyle: new TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Text(
                              'Şifre ',
                              style: GoogleFonts.openSans(
                                textStyle:
                                    Theme.of(context).textTheme.headline4,
                                fontSize: 26,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: TextField(
                              controller: getPassword,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                ),
                                labelText: 'Şifrenizi Giriniz',
                                labelStyle: new TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blueAccent,
                                onPrimary: Colors.white,
                                padding: EdgeInsets.all(12),
                              ),
                              onPressed: () {
                                if (getAccount.text == '' ||
                                    getPassword.text == '') {
                                  showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        AlertDialog(
                                      content: const Text(
                                        'Tüm alanlar uygun şekilde doldurulmalıdır!',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      backgroundColor: Colors.red.shade800,
                                      elevation: 30.0,
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context, 'Tamam'),
                                          child: const Text(
                                            'Tamam',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                } else {
                                  showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        AlertDialog(
                                      content: const Text(
                                        'Giriş Başarılı !!!!!',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      backgroundColor: Colors.indigo[500],
                                      elevation: 24.0,
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Main_Screen(
                                                        account:
                                                            getAccount.text,
                                                      )),
                                            );
                                          },
                                          child: const Text(
                                            'Tamam',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }
                              },
                              child: Text(
                                'Giriş Yap',
                                style: TextStyle(
                                    fontSize: 26, color: Colors.amber),
                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 15.0)),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueAccent,
                              onPrimary: Colors.white,
                              padding: EdgeInsets.all(20),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Main_Screen(
                                          account: getAccount.text,
                                        )),
                              );
                            },
                            child: Icon(
                              Icons.home,
                              color: Colors.amber,
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
