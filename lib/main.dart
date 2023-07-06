import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[900],
        appBar: AppBar(
          title: Text(
            'Lottery App',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Lottery winnig number is 5',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 253, 254, 255)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                width: 300,
                decoration: BoxDecoration(
                    color: x == 5 ? Colors.cyan[600] : Colors.grey[100],
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: x == 5
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.done,
                              color: Colors.greenAccent[400],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Congratulations you have won the lottery :)',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  // fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.error,
                              color: Colors.red[700],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Better luck next time your number is $x \ntry again',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                ),
              )
            ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = random.nextInt(10);
            print(x);
            setState(() {});
          },
          child: Icon(
            Icons.replay_rounded,
            color: Colors.cyan[300],
          ),
        ),
      ),
    );
  }
}
