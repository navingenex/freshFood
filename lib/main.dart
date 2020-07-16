import 'package:flutter/material.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Color(0xFFA6BCD0),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 10,
                    offset: Offset(5, 5),
                    color: Colors.grey[200],
                  ),
                ],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(
                    30,
                  ),
                ),
              ),
              child: Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Center(
                          child: Text(
                            'SIgn In',
                            style: TextStyle(
                              color: Color(0xFF7BED8D),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                          child: Column(
                        children: <Widget>[
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                              color: kSecondaryColor,
                            ),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Image(
                                    image: AssetImage(
                                        'assets/images/icons/icon-mail.png'),
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    child: TextField(),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                              color: kSecondaryColor,
                            ),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Image(
                                    image: AssetImage(
                                        'assets/images/icons/icon-mail.png'),
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    child: TextField(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(),
                            child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: Text('Forgot password')),
                          )
                        ],
                      )),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                'CREATE ACCOUNT',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
