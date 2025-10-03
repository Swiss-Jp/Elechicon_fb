import 'package:elechicon_fb/page/maincustom.dart';
import 'package:flutter/material.dart';
import 'package:elechicon_fb/page/newsfeed.dart';
import 'package:elechicon_fb/page/friends.dart';
import 'package:elechicon_fb/page/reels.dart';
import 'package:elechicon_fb/page/marketplace.dart';
import 'package:elechicon_fb/page/notification.dart';
import 'package:elechicon_fb/page/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Facebook',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),
      home: MainCustomPage(),
    );
  }
}

