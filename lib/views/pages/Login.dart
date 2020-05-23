import 'package:flutter/material.dart';
import './SignUpAndIn.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget> [
          Container(
            decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/bg_login.jpg"), fit: BoxFit.cover),
            ),
          ),
          Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(top: 200.0),
                    margin: const EdgeInsets.only(bottom: 20.0),
                    child: Column(
                      children: <Widget> [
                        Text('Welcome to Japan',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 52.0,
                            color: Colors.white
                          ),
                        ),
                        Text('Japanse photos',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white
                          ),
                        )
                      ]
                    )
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          width: 300,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0)
                            ),
                            onPressed: () {
                              print("Clicked");
                              Navigator.push(
                                context,
                                new MaterialPageRoute(builder: (context) => new SignUpAndInPage()),
                              );
                            },
                            child: const Text('EMAIL', style: TextStyle(fontSize: 20)),
                            color: Colors.amber,
                          ),
                        ),
                        SizedBox(
                          width: 300,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0)
                            ),
                            onPressed: () {},
                            child: const Text('FACEBOOK', style: TextStyle(fontSize: 20)),
                            color: Colors.amber,
                          ),
                        ),
                      ],
                    ),
                  )
                ]
              ),
          )
        ] 
      ) 
    );
  }
}