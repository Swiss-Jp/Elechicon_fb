import 'package:elechicon_fb/page/friends.dart';
import 'package:elechicon_fb/page/marketplace.dart';
import 'package:elechicon_fb/page/newsfeed.dart';
import 'package:elechicon_fb/page/notification.dart';
import 'package:elechicon_fb/page/profile.dart';
import 'package:elechicon_fb/page/reels.dart';
import 'package:flutter/material.dart';

class MainCustomPage extends StatefulWidget {
  const MainCustomPage({super.key});

  @override
  State <MainCustomPage> createState() =>  MaincustomPageState();
}

class  MaincustomPageState extends State <MainCustomPage> {
  int currentPage = 0;

List pages = [
  const Newsfeed(),
  const FriendsPage(),
  const ReelsPage(),
  const MarketPage(),
  const NotificationPage(),
  const ProfilePage()
];


void onTap(int index){
  setState(() {
    currentPage = index;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar:  BottomNavigationBar(
        currentIndex: currentPage,
        type: BottomNavigationBarType.fixed,
        onTap: onTap,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Friends"),
          BottomNavigationBarItem(icon: Icon(Icons.ondemand_video), label: "Reels"),
          BottomNavigationBarItem(icon: Icon(Icons.local_convenience_store), label: "MarketPlace"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notification"),
          BottomNavigationBarItem(icon: CircleAvatar(backgroundImage: AssetImage("assets/icon/jhetro.jpg"),),
          label : "Profile")
        
          
        ]
      ),
    );
  }
}