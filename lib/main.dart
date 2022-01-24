import 'package:flutter/material.dart';
import 'package:flutter_dialpad/flutter_dialpad.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Center(
            child: Text(
              "Dailer",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.home),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.contacts_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            ),
          ],
        ),
        body: Center(
          child: Container(
            color: Colors.indigo,
            width: 400,
            child: SafeArea(
                child: DialPad(
                    enableDtmf: true,
                    outputMask: "+880 000-0000",
                    backspaceButtonIconColor: Colors.red,
                    makeCall: (number) {
                      print(number);
                    })),
          ),
        ),
      ),
    );
  }
}
