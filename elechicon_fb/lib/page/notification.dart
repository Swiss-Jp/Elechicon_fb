import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notifications',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [ 
          Icon(Icons.more_horiz),
          SizedBox(width: 12), 
          Icon(Icons.search),
          SizedBox(width: 16), 
        ],
      ),
      body: Column(
        children: const [ 
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 16.0, top: 8.0, bottom: 8.0),
              child: Text(
                'Today',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar( 
              backgroundImage: AssetImage('assets/icon/jhetro.jpg'), 
            
            ),
            title: Text('Jhetro Jade Liked your post'),
            subtitle: Text('16h'),
            trailing: Icon(Icons.more_horiz),
          ),
          ListTile(
            leading: CircleAvatar( 
               backgroundImage: AssetImage('assets/profile/prof1.jpg'), 
            ),
            title: Text('BB GIRL Commented on your photo'),
            subtitle: Text('16h'),
            trailing: Icon(Icons.more_horiz),
          ),
          ListTile(
            leading: CircleAvatar( 
               backgroundImage: AssetImage('assets/profile/prof2.jpg'), 
            ),
            title: Text('Alex Smith Sent you a friend request'),
            subtitle: Text('16h'),
            trailing: Icon(Icons.more_horiz),
          ),
        ],
      ),
    );
  }
}