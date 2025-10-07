class User {
  final String id;
  final String name;
  final String email;
  final String password;
  static List<User> users = [];
  static User? currentUser;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
  });

}