import 'package:flutter/material.dart';
import 'package:wa_clone/views/contact_card_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  TabBar get _tabBar => const TabBar(
        labelColor: Colors.white,
        unselectedLabelColor: Colors.white,
        indicatorColor: Colors.white,
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: [
          Tab(text: 'Contacts'),
          Tab(text: 'Status'),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'MESSAGES',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Theme.of(context).colorScheme.primary,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert, color: Colors.white)),
          ],
          bottom: PreferredSize(
              preferredSize: _tabBar.preferredSize,
              child: Material(
                color: Theme.of(context).colorScheme.primary,
                child: Theme(
                    data: ThemeData().copyWith(splashColor: Colors.white10),
                    child: _tabBar),
              )),
        ),
        body: Column(
          children: [
            Expanded(
              child: TabBarView(children: [
                ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return const ContactCard();
                  },
                ),
                ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return const ContactCard();
                  },
                ),
              ]),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape: const CircleBorder(),
          backgroundColor: Theme.of(context).colorScheme.primary,
          child: const Icon(
            Icons.message_rounded,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
