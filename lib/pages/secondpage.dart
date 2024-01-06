import 'package:flutter/material.dart';
import 'package:lab8_642021157/pages/thirdpage.dart';

class Secondpage extends StatefulWidget {
  const Secondpage({super.key});

  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'หน้าที่2',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(255, 0, 0, 1),
          ),
        ),
        elevation: 10,
        backgroundColor: Color.fromARGB(255, 6, 235, 235),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 16),
            Text('หน้าที่2', style: TextStyle(fontSize: 30)),
            TextFormField(
              controller: _controller,
              autofocus: true,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                labelText: 'First Name',
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context,
                      MaterialPageRoute(builder: (context) => Secondpage()));
                },
                child: Text('Back page')),
            SizedBox(height: 16),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Thirdpage(
                                data: _controller.text,
                              )));
                },
                child: Text('Next page'))
          ],
        ),
      ),
    );
  }
}
