import 'package:flutter/material.dart';
import 'package:lab8_642021157/pages/secondpage.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Lab7",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 108, 211, 68),
          ),
        ),
        elevation: 10,
        backgroundColor: Color.fromARGB(255, 10, 82, 4),
      ),
      body: Center(
          child: Column(
            children: [
              SizedBox(height: 16),
              Text('หน้าหลัก',style: TextStyle(fontSize: 30)),
              SizedBox(height: 16),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Secondpage()));
                  },
                  child: Text('Next page'))
            ],
          ),
        )
    );
  }
}