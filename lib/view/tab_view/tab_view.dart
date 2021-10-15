import 'package:flutter/material.dart';

import '../home_view.dart';
import '../order_view.dart';
import '../paypal_view.dart';
import '../profile_view.dart';

class Tabpage extends StatefulWidget {
  const Tabpage({Key? key}) : super(key: key);

  @override
  _TabpageState createState() => _TabpageState();
}

class _TabpageState extends State<Tabpage> {
  final List<Widget> _children = [
    Homepage(),
    Orderpage(),
    Paypalpage(),
    Profilepage(),
  ];

  void onTabTapped(int index, BuildContext context) {
    print(index);
    setState(() {
       DefaultTabController.of(context)?.animateTo(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: TabBarView(children: _children),
        bottomNavigationBar: Builder(
          builder: (context) => BottomNavigationBar(
            onTap: (val) => onTabTapped(val, context),
            type: BottomNavigationBarType.fixed,
            currentIndex: DefaultTabController.of(context)?.index ?? 0,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('Assets/Images/store.png')),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('Assets/Images/shoppinglist.png')),
                label: 'Order',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('Assets/Images/list.png')),
                label: 'My List',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('Assets/Images/user.png')),
                label: 'Profile',
              ),
            ],
            selectedItemColor: Color(0xffD35400),
            unselectedItemColor: Colors.black87,
            showUnselectedLabels: true,
          ),
        ),
      ),
    );
  }
}

