import 'package:flutter/material.dart';

class ContactCard extends StatefulWidget {
  const ContactCard({super.key});

  @override
  State<ContactCard> createState() => _ContactCardState();
}

class _ContactCardState extends State<ContactCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton.filledTonal(
                    onPressed: () {},
                    icon: const Icon(Icons.person),
                    iconSize: 36),
              ),
              const Text('Contact Name'),
            ],
          ),
          const Divider(
            height: 3,
          )
        ],
      ),
    );
  }
}
