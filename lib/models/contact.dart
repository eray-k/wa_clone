import 'package:wa_clone/models/Message.dart';
import 'package:wa_clone/views/contact_card_view.dart';

class Contact {
  final int id;
  final String name;
  final String phoneNumber;
  //profilePicture
  List<Message> messages;
  Contact(
      {required this.id,
      required this.name,
      required this.phoneNumber,
      List<Message>? messages})
      : messages = messages ?? List<Message>.empty(growable: true);

  ContactCard getCard() {
    return ContactCard(contact: this);
  }

  @override
  String toString() {
    return "\nId: $id | Name: $name | No: $phoneNumber".toString();
  }
}
