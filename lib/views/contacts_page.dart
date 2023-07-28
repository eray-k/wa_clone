import 'package:flutter/material.dart';
import 'package:wa_clone/models/Message.dart';
import 'package:wa_clone/models/contact.dart';

import 'contact_card_view.dart';

class ContactsPage extends StatelessWidget {
  ContactsPage({super.key});

  //TODO: Get data from db
  final List<Contact> contacts = [
    Contact(id: 0, name: "Contact 1", phoneNumber: "000", messages: [
      Message(0, 'content', 11111),
      Message(1, 'content', 11111),
      Message(0, 'content', 11111)
    ]),
    Contact(id: 1, name: "Contact 2", phoneNumber: "000"),
    Contact(id: 2, name: "Contact 3", phoneNumber: "000"),
    Contact(id: 3, name: "Contact 4", phoneNumber: "000"),
    Contact(id: 4, name: "Contact 5", phoneNumber: "000"),
    Contact(id: 5, name: "Contact 6", phoneNumber: "000"),
    Contact(id: 6, name: "Contact 7", phoneNumber: "000"),
  ];

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
                  itemCount: contacts.length,
                  itemBuilder: (context, index) {
                    return contacts[index].getCard();
                  },
                ),
                ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return ContactCard(
                        contact: Contact(
                            id: 0, phoneNumber: "0", name: 'Contact Name'));
                  },
                ),
              ]),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print(contacts);
          },
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
