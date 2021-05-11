import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:task_5/Menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String name;
  String email;
  String password;
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  TextEditingController _controller3 = TextEditingController();
  bool _obsecuretext = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'main',
      routes: {
        'Menu': (context) => Menu(),
        'main': (context) => Scaffold(
              backgroundColor: Colors.white70,
              body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(top: 100),
                          width: 150,
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller: _controller1,
                          onChanged: (value1) {
                            name = value1;
                          },
                          keyboardType: TextInputType.name,
                          autocorrect: true,
                          textInputAction: TextInputAction.next,
                          cursorColor: Colors.teal,
                          decoration: InputDecoration(
                              labelText: 'User Name',
                              counter: Container(
                                child: Text('Required'),
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(left: 30),
                              ),
                              prefixIcon: Icon(Icons.account_circle),
                              hintText: 'User Name',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25))),
                        ),
                        SizedBox(height: 10,),
                        TextField(
                          controller: _controller2,
                          onChanged: (value2) {
                            email = value2;
                          },
                          keyboardType: TextInputType.emailAddress,
                          autocorrect: true,
                          textInputAction: TextInputAction.next,
                          cursorColor: Colors.teal,
                          decoration: InputDecoration(
                              labelText: 'Email',
                              counter: Container(
                                child: Text('Required'),
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(left: 30),
                              ),
                              prefixIcon: Icon(Icons.email),
                              hintText: 'Email',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25))),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          controller: _controller3,
                          onChanged: (value3) {
                            password = value3;
                          },
                          keyboardType: TextInputType.visiblePassword,
                          autocorrect: false,
                          obscureText: _obsecuretext,
                          textInputAction: TextInputAction.next,
                          cursorColor: Colors.teal,
                          decoration: InputDecoration(
                              labelText: 'Password',
                              counter: Container(
                                child: Text('Required'),
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(left: 30),
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(Icons.visibility),
                                onPressed: () {
                                  setState(() {
                                    _obsecuretext = !_obsecuretext;
                                  });
                                },
                              ),
                              prefixIcon: Icon(Icons.vpn_key),
                              hintText: 'Password',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25))),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: 180,
                          child: FloatingActionButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            splashColor: Colors.black,
                            tooltip: 'sign up',
                            backgroundColor: Colors.teal,
                            child: Text(
                              'CREATE ACCOUNT',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                wordSpacing: 4,
                              ),
                            ),
                            onPressed: () {
                              _controller1.clear();
                              _controller2.clear();
                              _controller3.clear();
                              Navigator.pushNamed(context, 'Menu');
                            },
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
      },
    );
  }
}
