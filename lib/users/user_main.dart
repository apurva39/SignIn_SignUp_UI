import 'package:flutter/material.dart';
import 'package:sign_up/login.dart';
import 'package:sign_up/users/profile.dart';

import 'changePassword.dart';
import 'dashBoard.dart';





class UserMain extends StatefulWidget {
  const UserMain({Key? key}) : super(key: key);

  @override
  State<UserMain> createState() => _UserMainState();
}

class _UserMainState extends State<UserMain> {
  int _selectIndex=0;
  static List<Widget> _widgetOptions=<Widget>[
    DashBoard(),
    Profile(),
    ChangePassword(),
  ];


  void _onItemTapped(int index)
  {
    setState(() {
      _selectIndex=index;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('Welcome user'),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, 'login');
            },
              child: Text('Logout'),),
          ],
        ),
      ),
      body: _widgetOptions.elementAt(_selectIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon:Icon(Icons.home),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.person),
            label: 'My Profile',
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.settings),
            label: 'Change Password',
          ),

        ],
        currentIndex: _selectIndex,
        selectedItemColor: Colors.redAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}
