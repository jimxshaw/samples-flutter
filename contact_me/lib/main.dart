import 'package:contact_me/util/hexcolor.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: HexColor('#226cb6'),
        body: SafeArea(
          child: Column(
            children: [
              CircleAvatar(
                radius: 40.0,
                backgroundImage: AssetImage('images/profile_pic.jpg'),
              ),
              Text(
                'James Shaw',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Software Engineer',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 20.0,
                  color: Colors.white,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone_iphone,
                        color: HexColor('#226cb6'),
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        '(555) 123-4567',
                        style: TextStyle(
                            color: HexColor('#226cb6'),
                            fontFamily: 'SourceSansPro',
                            fontSize: 20.0),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: HexColor('#226cb6'),
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        'sample123@gmail.com',
                        style: TextStyle(
                            color: HexColor('#226cb6'),
                            fontFamily: 'SourceSansPro',
                            fontSize: 20.0),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
