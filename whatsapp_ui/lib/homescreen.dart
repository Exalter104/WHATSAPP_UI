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
          actions: const [
            Icon(Icons.search_outlined),
            SizedBox(
              width: 10,
            )
          ],
          bottom: const TabBar(
            tabs: [
              Icon(Icons.camera_alt_rounded),
              Text("Messages"),
              Text("Calls"),
              Text("Status"),
            ],
          ),
        ),
        body: const TabBarView(children: [
          Text("camera"),
          Text("Messages"),
          Text("Calls"),
          Text("Status"),
        ]),
      ),
    );
  }
}
