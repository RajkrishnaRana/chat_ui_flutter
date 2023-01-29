import 'package:chat_ui/models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.isLiked,
    required this.unread,
  });
}

//YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'assets/images/greg.jpg',
);

//USERS
final User sayan =
    User(id: 1, name: 'Sayan', imageUrl: 'assets/images/sayan.jpg');
final User sam = User(id: 2, name: 'Sam', imageUrl: 'assets/images/sam.jpg');
final User gora = User(id: 3, name: 'Gora', imageUrl: 'assets/images/gora.jpg');
final User aman = User(id: 4, name: 'Aman', imageUrl: 'assets/images/aman.jpg');
final User maity =
    User(id: 5, name: 'Maity', imageUrl: 'assets/images/maity.jpg');
final User mondal =
    User(id: 6, name: 'Mondal', imageUrl: 'assets/images/mondal.jpg');
final User shantanu =
    User(id: 7, name: 'Shantanu', imageUrl: 'assets/images/shantanu.jpg');

//FAVOURITE CONTACTS
List<User> favourites = [sam, gora, maity, mondal, aman];

//EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: sayan,
    time: '5.40 PM',
    text: 'E vai kotodur porli??',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: sam,
    time: '4.30 PM',
    text: 'How did you do that??',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: gora,
    time: '3.40 PM',
    text: 'Hey Bro, Please send me some money',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: aman,
    time: '2.40 PM',
    text: 'I am a card magician',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: maity,
    time: '1.40 PM',
    text: 'Non is calling me',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: mondal,
    time: '12.40 PM',
    text: 'I have solved a new hard code today',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: shantanu,
    time: '11.40 AM',
    text: 'Bro My phone is stolen',
    isLiked: false,
    unread: false,
  )
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: sayan,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Just walked my doge. She was super duper cute. The best pupper!!',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: sam,
    time: '3:45 PM',
    text: 'How\'s the doggo?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: gora,
    time: '3:15 PM',
    text: 'All the food',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Nice! What kind of food did you eat?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: shantanu,
    time: '2:00 PM',
    text: 'I ate so much food today.',
    isLiked: false,
    unread: true,
  ),
];
