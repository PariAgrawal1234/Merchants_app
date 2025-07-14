import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
backgroundColor: const Color(0xFFFFDADA),
child: ListView(
padding: EdgeInsets.zero,
children: [
DrawerHeader(
decoration: const BoxDecoration(color: Color(0xFFC84771)),
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Image.asset('assets/Sidebar.png', height: 80),
const SizedBox(height: 10),
Container(
padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
color: Colors.yellow[100],
child: const Text("Hi there, we’ve got you covered!"),
),
],
),
),
...[
'  Profile',
'  Permissions',
'  Notifications',
'  My Merchants',
'  Settings',
'  Logout'
].map((text) => ListTile(
title: Text(text, style: const TextStyle(fontFamily: 'InstrumentSerif')),
  onTap: () {
    Navigator.pop(context); // just closes drawer for now
  },
),
),
],
),
    );
  }
}