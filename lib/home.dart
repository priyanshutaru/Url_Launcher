// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLink extends StatefulWidget {
  const UrlLink({super.key});

  @override
  State<UrlLink> createState() => _UrlLinkState();
}

class _UrlLinkState extends State<UrlLink> {
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


/* this is basically a flutter plugin by which we can redirect the web page or you can say with this plugin
   we can open link and redirect the website. any where you want to go like if you want to go on emial app than 
   you just tap and you redirect the email.

   how to install this in our

   first you need to go the pub.dev website and than you have to search url launcer in the search box.
   than you get much more plugin by this name but you choose only who have high percentage and more use 
   by the developer.

   after than you just found five option like readme, chnagelog , example , installing , versios,scores
   
   how to install the url launcher plugin 

   for installing the plugin we have two method 

   method 1 : you get line in the install section you just copy the line and paste it on your 
   terminal command and run it 

   ...............

   method 2 :

   Simpli copy the given dependencies and paste it in your project pubsec.yaml under the cupertino
   icon and run the the flutter pub get in your terminal.
   note: alwyas use the latest version of the dependencies 

    url_launcher: ^6.1.10

   after than you simpli copy this line and paste it in your home section.
   import 'package:url_launcher/url_launcher.dart';


*/