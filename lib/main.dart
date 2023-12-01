import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: firspage(),
    );
  }
}

class firspage extends StatefulWidget {
  const firspage({super.key});

  @override
  State<firspage> createState() => _firspageState();
}

class _firspageState extends State<firspage> {
  var text = '';
  var firstfield = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white30,
        appBar: AppBar(
          toolbarHeight: 120,
          title: Text('Welcome',
              style: TextStyle(fontSize: 20, color: Colors.white)),
          centerTitle: true,
        ),
        body: Center(
          child: Column(children: [
            Text(''),
            TextField(
              controller: firstfield,
              decoration: InputDecoration(
                  label: Icon(Icons.account_circle, color: Colors.white),
                  hintText: 'Enter a Text',
                  filled: true,
                  fillColor: Colors.red.shade500,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(30)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.white))),
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    text = firstfield.text;
                  });
                },
                child: Text('Tap me'))
          ]),
        ));
  }
}
