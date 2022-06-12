import 'package:flutter/material.dart';
import 'package:myflutapp/chat_screen.dart';
import 'package:myflutapp/home_screen.dart';
import 'package:myflutapp/profile_screen.dart';
import 'package:myflutapp/setting.dart';

class Home extends StatefulWidget implements PersistentBottomSheetController {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();

  @override
  // TODO: implement close
  VoidCallback get close => throw UnimplementedError();

  @override
  // TODO: implement closed
  Future get closed => throw UnimplementedError();

  @override
  // TODO: implement setState
  StateSetter? get setState => throw UnimplementedError();
}

class _HomeState extends State<Home> {
  var indexscreen = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const ChatScreen(),
    const ProfileScreen(),
    const SettingScreen(),
  ];
  List<String> title = [
    'HomeScreen',
    'ChatScreen',
    'ProfileScreen',
    'SettingScreen',
  ];
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();
  bool isBtn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      appBar: AppBar(
        title: Text(title[indexscreen]),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          )
        ],
      ),
      // drawer: Drawer(
      //   child: Column(children: const <Widget>[
      //     UserAccountsDrawerHeader(
      //       accountName: Text(
      //         "Mohammed Abdalla",
      //         style: TextStyle(
      //           fontWeight: FontWeight.bold,
      //           fontSize: 20,
      //           color: Colors.white,
      //         ),
      //       ),
      //       accountEmail: Text("mohabdalla599@gmail.com"),
      //       currentAccountPicture: CircleAvatar(
      //         backgroundImage: NetworkImage(
      //             'https://scontent-iad3-1.xx.fbcdn.net/v/t39.30808-6/271152437_4517210088326282_5345610355013129660_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeEjo00XZflOlxLhmajnyCv6Q3bK3y8WIORDdsrfLxYg5FUK-0jegyN_igJKcc6zA1_RIn2Ajf7r-JMsHHN15EaR&_nc_ohc=VKUHE80wu94AX-1phmd&_nc_ht=scontent-iad3-1.xx&oh=00_AT933bU2_f-oHQ1vUCWYVgAGABS7aZEP-91EX6fWo1YqYg&oe=626991F0'),
      //       ),
      //     ),
      //     ListTile(
      //       title: Text("Sent"),
      //       leading: Icon(Icons.send),
      //     ),
      //     Divider(
      //       thickness: 1,
      //     ),
      //     ListTile(
      //       title: Text("inbox"),
      //       leading: Icon(Icons.inbox),
      //     ),
      //     ListTile(
      //       title: Text("Started"),
      //       leading: Icon(Icons.star),
      //     ),
      //     Divider(
      //       thickness: 1,
      //     ),
      //     ListTile(
      //       title: Text("chat"),
      //       leading: Icon(Icons.chat),
      //     ),
      //     Divider(
      //       thickness: 1,
      //     ),
      //     ListTile(
      //       title: Text("Archive"),
      //       leading: Icon(Icons.archive),
      //     ),
      //     Divider(
      //       thickness: 1,
      //     ),
      //     ListTile(
      //       title: Text("Log out"),
      //       leading: Icon(Icons.logout),
      //     ),
      //   ]),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        currentIndex: indexscreen,
        onTap: (value) {
          setState(() {
            indexscreen = value;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'chat'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'profile'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Sittings'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(isBtn ? Icons.edit : Icons.add),
        backgroundColor: Colors.red,
        onPressed: () {
          scaffoldkey.currentState!.showBottomSheet(
            (context) => Container(
              width: double.infinity,
              height: 120,
              color: Colors.amberAccent,
              child: Text(
                "data",
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        },
      ),
      body: screens[indexscreen],
    );
  }

  void botomShow() {}
}
