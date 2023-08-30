class Course {
  Course(
      {required this.name,
      required this.duration,
      required this.lessons,
      required this.type,
      required this.price,
      required this.userName,
      required this.userRole,
      required this.description,
      required this.image,
      required this.userImage});

  final String name;
  final String duration;
  final String lessons;
  final String type;
  final String price;
  final String userName;
  final String userRole;
  final String description;
  final String image;
  final String userImage;
}

final List<String> courses = [
  'All',
  'UI/UX',
  'Illustration',
  '3D Animation',
  'Animation',
  'Development',
  'Testing',
];

final List<Course> availabelCourses = [
  Course(
      name: 'Select design sprint for beginner',
      duration: '5h 21m',
      type: 'UI/UX',
      price: 'free',
      userName: 'Laurel Seilha',
      userRole: 'Product Designer',
      lessons: '6 lessons',
      image: 'lib/images/users/base_background.png',
      userImage: 'lib/images/Avatar.png',
      description:
          'Select design sprint for beginner, Python Programming in Hindi: Unlock Your Coding Potential with Engaging Quizzes and Skill-Sharpening Practice Questions'),
  Course(
      name: 'Python Full Course for Beginners 2023 With Quizzes',
      duration: '11h 11m',
      type: 'Python',
      price: 'free',
      userName: 'Chetan Girase',
      userRole: 'Wakad Pune',
      lessons: '5 lessons',
      image: 'lib/images/users/base_background.png',
      userImage: 'lib/images/Avatar.png',
      description:
          'Python Programming in Hindi: Unlock Your Coding Potential with Engaging Quizzes and Skill-Sharpening Practice Questions'),
  Course(
      name: 'ChatGPT Python Alchemy: Elevate Your Coding with AI',
      duration: '7h 22m',
      type: 'ChatGPT',
      price: 'free',
      userName: 'Chetan Girase',
      userRole: 'Product Manager',
      lessons: '2 lessons',
      image: 'lib/images/users/base_background.png',
      userImage: 'lib/images/Avatar.png',
      description:
          'Unleash the Potential of ChatGPT and Python Fusion for Next-Level Coding Proficiency | Natural Language Processing'),
  Course(
      name: 'Graphic Design Masterclass - Learn GREAT Design',
      duration: '10h 10m',
      type: 'iOS',
      price: 'free',
      userName: 'Chetan Girase',
      userRole: 'Wakad Pune',
      lessons: '8 lessons',
      image: 'lib/images/users/base_background.png',
      userImage: 'lib/images/Avatar.png',
      description:
          'The Ultimate Graphic Design Course Which Covers Photoshop, Illustrator, InDesign,Design Theory, Branding and Logo Design'),
];
