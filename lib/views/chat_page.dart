import 'package:flutter/material.dart';
import 'package:wa_clone/models/Message.dart';
import 'package:wa_clone/models/contact.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key, required this.contact});
  final Contact contact;

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  /*
  List<Message> messageList = [
    Message(
        0,
        'Long text 1 Long text 1 Long text 1 Long text 1 Long text 1 Long text 1 Long text 1 Long text 1 Long text 1 Long text 1 Long text 1 Long text 1 Long text 1 Long text 1 ',
        00000),
    Message(0, 'content', 00000),
    Message(1, 'content', 00000),
    Message(1, 'content', 00000),
    Message(0, 'content', 00000),
    Message(0, 'content', 00000),
    Message(0, 'content', 00000),
    Message(0, 'content', 00000),
    Message(0, 'content', 00000),
    Message(0, 'content', 00000),
    Message(0, 'content', 00000),
    Message(0, 'content', 00000),
    Message(0, 'content', 00000),
    Message(0, 'content', 00000),
  ];*/
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final messageList = widget.contact.messages;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: const Text(
          'MESSAGES',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Container(
        color: Colors.green[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: messageList.length,
                    itemBuilder: (context, index) {
                      return MessageView(
                        message: messageList[index].content,
                        isMine: messageList[index].owner == 0,
                      );
                    })),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(180)),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 16),
                      child: TextField(
                        controller: _controller,
                        //Message Input
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Say hi!',
                        ),

                        //BUG: Doesnt support multiline
                        //textInputAction: TextInputAction.newline,
                        textInputAction: TextInputAction.send,
                        keyboardType: TextInputType.text,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
                  child: IconButton.filled(
                      //Submit Button
                      onPressed: () {
                        messageList.add(Message(0, _controller.text, 11111));
                        _controller.clear();
                        setState(() {});
                      },
                      icon: const Icon(Icons.send)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MessageView extends StatelessWidget {
  const MessageView({super.key, required this.message, required this.isMine});
  final String message;
  final bool isMine;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          isMine ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            padding: const EdgeInsets.all(8.0),
            //TODO: Message box arrow, focus problem
            decoration: BoxDecoration(
                color: (isMine ? Colors.green : Colors.white),
                borderRadius: const BorderRadius.all(Radius.circular(8.0))),
            child: LimitedBox(maxWidth: 200, child: Text(message)),
          ),
        ),
      ],
    );
  }
}
