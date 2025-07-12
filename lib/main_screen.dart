import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFC84771),
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),

      drawer: Drawer(
        backgroundColor: const Color(0xFFFFDADA),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Color(0xFFC84771)),
              child: Column(
                children: [
                  Image.asset('assets/Sidebar.png', height: 100),
                  const SizedBox(height: 5),
                  Container(
                    padding: const EdgeInsets.all(3),
                    color: Colors.yellow[100],
                    child: const Text("Hi there, we’ve got you covered!"),
                  ),
                ],
              ),
            ),
            ...['  Profile', '  Permissions', '  Notifications', '  My Merchants', '  Settings', '  Logout'].map((text) =>
                ListTile(
                  title: Text(text, style: const TextStyle(fontFamily: 'InstrumentSerif')),
                  onTap: () {},
                )),
          ],
        ),
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: const CircleAvatar(child: Text('A')),
                    title: const Text('Merchant name'),
                    subtitle: const Text('Address'),
                    trailing: Icon(Icons.more_vert),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'The description about your shop will be displayed here.',
                    style: TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Chip(label: Text('Save')),
                      const SizedBox(width: 8),
                      Chip(label: Text('Details'), backgroundColor: Colors.deepPurple[200]),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
