import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp"),
          backgroundColor: Colors.teal,
          actions: [
            const Icon(Icons.search_outlined),
            const SizedBox(
              width: 10,
            ),
            PopupMenuButton(
              icon: const Icon(Icons.more_vert_outlined),
              itemBuilder: (context) => const [
                PopupMenuItem(value: "1", child: Text("New Group")),
                PopupMenuItem(value: "2", child: Text("Search Number")),
                PopupMenuItem(value: "3", child: Text("Log Out")),
              ],
            )
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt_rounded),
              ),
              Tab(child: Text("Messages")),
              Tab(child: Text("Calls")),
              Tab(child: Text("Status")),
            ],
          ),
        ),
        body: TabBarView(children: [
          const Text("camera"),
          ListView.builder(
              itemCount: 40,
              itemBuilder: ((context, index) {
//Messages
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("images/me.png"),
                  ),
                  title: Text("Home ❤️"),
                  subtitle: Text(
                    "zargya Za tasra Dera Meena Kom ",
                  ),
                  trailing: Text("5:01"),
                );
              })),
//Calls
          ListView.builder(
              itemCount: 40,
              itemBuilder: ((context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("images/me.png"),
                  ),
                  title: Text("Home ❤️"),
                  subtitle: Text(
                    "📞 October 01,5:0 PM",
                    style: TextStyle(color: Colors.red),
                  ),
                  trailing: Icon(Icons.missed_video_call),
                );
              })),
//Status

          ListView.builder(
              itemCount: 40,
              itemBuilder: ((context, index) {
                return ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.green, width: 3)),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage("images/me.png"),
                    ),
                  ),
                  title: const Text("Home ❤️"),
                  subtitle: const Text(
                    "5:0 PM",
                  ),
                );
              })),
        ]),
      ),
    );
  }
}
