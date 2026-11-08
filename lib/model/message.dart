class Message {
  final String? text;
  final String? imagePath;
  final bool isSender;

  Message({this.imagePath, this.text, this.isSender = false});

  static List<Message> messages= [
    Message(
      text: "Hello!",
      isSender: true,
    ),
    Message(
      text: "Hello!",
    ),
    Message(
      text: "Hey! Have you ever thought about how random moments can sometimes turn into the best memories? It’s like the universe loves to surprise us when we least expect it!",
        isSender: true,
    ),
    Message(
      text: "what a Great Content Tp learn Flutter",
      isSender: true, imagePath: "assets/images/route_image.png",
    ),
    Message(text: "what a Great Content Tp learn Flutter"),
  ];
}