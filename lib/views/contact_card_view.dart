import 'package:flutter/material.dart';

class ContactCard extends StatefulWidget {
  const ContactCard({super.key});

  @override
  State<ContactCard> createState() => _ContactCardState();
}

class _ContactCardState extends State<ContactCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //TODO: PUSH CHAT SCREEN
      },
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton.filledTonal(
                onPressed: () {}, icon: const Icon(Icons.person), iconSize: 36),
          ),
          const Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text('Contact Name'),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      child: Text(
                        '12:00',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ),
                  ],
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      overflow: TextOverflow.ellipsis),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
