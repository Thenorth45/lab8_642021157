import 'package:flutter/material.dart';
import 'package:lab8_642021157/pages/secondpage.dart';

class Thirdpage extends StatefulWidget {
  const Thirdpage({super.key, required this.data});

  final String data;

  @override
  State<Thirdpage> createState() => _ThirdpageState();
}

class _ThirdpageState extends State<Thirdpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('หน้าที่3'),
        elevation: 10,
        backgroundColor: Color.fromARGB(255, 220, 235, 6),
      ),
      body: Center(
          child: Column(
        children: [
          Text(widget.data),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => Secondpage()));
              },
              child: Text('Back page'))
        ],
      )),
    );
  }
}