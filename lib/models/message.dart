
class Message {
  final int owner, timestamp; // Owner is Contact ID. For sent messages is 0
  String content;
  Message(this.owner, this.content, this.timestamp);

  void changeContent(newContent) {
    content = newContent;
  }

  @override
  String toString() {
    return content;
  }
}
