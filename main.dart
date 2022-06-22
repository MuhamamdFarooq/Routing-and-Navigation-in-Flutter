import 'dart:js';

import 'package:ado/third.dart';
import 'package:flutter/material.dart';
import 'package:ado/next.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/second': (context) => next(),
      '/third': (context) => third(),
    },
    home: home(),
  ));
}

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Text(
                'Welcome to Home Page',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 4, 38, 65)),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => next()),

                    // );

                    Navigator.pushNamed(context, '/second');
                  },
                  child: Text('Go to Next Page')),
              SizedBox(height: 60),
              ElevatedButton(
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: 'Record Saved',
                        toastLength: Toast.LENGTH_LONG,
                        gravity: ToastGravity.BOTTOM_RIGHT,
                        backgroundColor: Colors.red,
                        textColor: Color.fromARGB(255, 43, 40, 8));
                  },
                  child: Text('Click me')),
            ],
          ),
        ),
      ),
    );
  }
}
