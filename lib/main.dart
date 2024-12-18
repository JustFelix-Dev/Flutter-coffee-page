import 'package:coffee_page/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( const  MaterialApp(
    home: Home(),
  ));
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Coffee Page'),
        backgroundColor: Colors.grey,
        centerTitle: true,
      ),
      body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
         children: [
          Container(
            height: 100,
            color: Colors.red,
            child: const Text('One'),
          ),
          Container(
            height: 200,
            color: Colors.green,
            child: const Text('Two'),
          ),
          Container(
            height: 300,
            color: Colors.brown,
            child: const Text('Three'),
          ),
         ],
      ),
    );

  }
}

