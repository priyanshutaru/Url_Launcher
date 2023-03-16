// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:url/home.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.green),
      // home: UrlLink(),
      home: urllauncher(),
    );
  }
}

class urllauncher extends StatefulWidget {
  const urllauncher({super.key});

  @override
  State<urllauncher> createState() => _urllauncherState();
}

class _urllauncherState extends State<urllauncher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Geeks For Geeks"),
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () async {
              const url = 'https://www.geeksforgeeks.org/';
              if (await canLaunch(url)) {
                await launch(url, forceWebView: true, enableJavaScript: true);
              } else {
                throw 'Could not launch $url';
              }
            },
            child: Center(
              child: Text(
                "Want Read Article Tap Here",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          // Text(
          //   "Priyanshu",
          //   style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          // ),
          // Row(
          //   // ignore: prefer_const_literals_to_create_immutables
          //   children: [
          //     Icon(
          //       Icons.person_2_rounded,
          //       color: Colors.red,
          //     ),
          //     SizedBox(
          //       height: 20,
          //     ),
          //     GestureDetector(
          //       onTap: () async {
          //         const url = 'https://github.com/priyanshutaru';
          //         if (await canLaunch(url)) {
          //           await launch(url);
          //         } else {
          //           throw 'could not launch $url';
          //         }
          //       },
          //       child: Text(
          //         "Priyanshu",
          //         style: TextStyle(
          //             color: Colors.black, fontWeight: FontWeight.bold),
          //       ),
          //     )
          //   ],
          // ),
        ],
      ),
    );
  }
}
