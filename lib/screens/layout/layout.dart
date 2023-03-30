import 'package:cht2/screens/layout/sos.dart';
import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import 'doctor.dart';
import 'followup.dart';
import 'home.dart';



class Layout extends StatefulWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int _selectedIndex = 0;

  static  List<Widget> _pages = <Widget>[    home(),        SosPage(),  FollowupPage(),];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chronic Health Tracker'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(''),
              decoration: BoxDecoration(
                color: buttoncolor,
              ),
            ),
            ListTile(
              title: Text('Add Card'),
              onTap: () {
                // TODO: Add card functionality
              },
            ),
            ListTile(
              title: Text('Log Out'),
              onTap: () {
                // TODO: Log out functionality
              },
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.sos_outlined),
            label: 'sos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pending_actions_outlined),
            label: 'Follow up',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: buttoncolor,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: black,
        unselectedLabelStyle: TextStyle(color: black),
        backgroundColor: grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
