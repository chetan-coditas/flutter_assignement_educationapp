class User {
  User({
    required this.image,
    required this.name,
    required this.online,
    required this.message,
    required this.unreadMessageCount,
    required this.timeText,
  });

  final String name;
  final String image;
  final bool online;
  final String message;
  final String unreadMessageCount;
  final String timeText;
}

final List<User> onlineUsers = [
  User(
    image: 'lib/images/users/Avatar_1.png',
    name: 'Cris Hems',
    online: true,
    message: 'Hey, Can I ask something?',
    unreadMessageCount: '2',
    timeText: '10 min',
  ),
  User(
    image: 'lib/images/users/Avatar_2.png',
    name: 'Rogger hulg',
    online: false,
    message: 'Thanks for informing!',
    unreadMessageCount: '',
    timeText: '28 min',
  ),
  User(
    image: 'lib/images/users/Avatar_4.png',
    name: 'Hilman Buris',
    online: true,
    message: 'Did you take the free illustration class?',
    unreadMessageCount: '5',
    timeText: 'Yesterday',
  ),
  User(
    image: 'lib/images/users/Avatar_1.png',
    name: 'Eric Lwrence',
    online: false,
    message: 'Hey Eric!',
    unreadMessageCount: '7',
    timeText: 'Yesterday',
  ),
  User(
    image: 'lib/images/users/Avatar_2.png',
    name: 'Brad Pit',
    online: false,
    message: 'Hey Brad',
    unreadMessageCount: '',
    timeText: 'Yesterday',
  ),
  User(
    image: 'lib/images/users/Avatar_1.png',
    name: 'Ninja jennifer',
    online: true,
    message: 'Kung fu ninja',
    unreadMessageCount: '',
    timeText: 'Yesterday',
  ),
  User(
    image: 'lib/images/users/Avatar_2.png',
    name: 'Andy Patil',
    online: true,
    message: 'Can we exanchage?',
    unreadMessageCount: '',
    timeText: '2 Week Ago',
  ),
  User(
    image: 'lib/images/users/Avatar_4.png',
    name: 'Warude Kaml',
    online: false,
    message: 'Are you sure?',
    unreadMessageCount: '3',
    timeText: '12/08/23',
  ),
  User(
    image: 'lib/images/users/Avatar_1.png',
    name: 'Tony Stark',
    online: false,
    message: 'Tony Stark Tony Stark Tony Stark Tony Stark',
    unreadMessageCount: '1',
    timeText: '14/08/23',
  ),
  User(
    image: 'lib/images/users/Avatar_2.png',
    name: 'Captain america',
    online: true,
    message: 'Captain america Captain america Captain america',
    unreadMessageCount: '6',
    timeText: '28/08/23',
  ),
];
