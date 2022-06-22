import 'dart:js';

import 'package:flutter/material.dart';
import 'package:ado/next.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: next(),
  ));
}

class next extends StatelessWidget {
  const next({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text('NEXT PAGE'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Text(
                'Welcome to Next Page',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 4, 38, 65)),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                  onPressed: () {
                    // Navigator.pop(context);

                    Navigator.pushNamed(context, '/third');
                  },
                  child: Text('Go to third Page')),
            ],
          ),
        ),
      ),
    );
  }
}
