class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final String? profilePhoto;
  final String? phoneNumber;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    this.profilePhoto,
    this.phoneNumber,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map["id"],
      name: map["name"],
      username: map["username"],
      email: map["email"],
      profilePhoto: map["profile_photo"],
      phoneNumber: map["phone_number"],
    );
  }

  factory User.dummy() {
    return User(
      id: 001,
      name: "Rifa Sri Nurfadilah",
      username: "Rifasri",
      email: "2006135@itg.ac.id",
      profilePhoto:
          "https://w7.pngwing.com/pngs/481/608/png-transparent-illustration-of-woman-sitting-hijab-muslim-islam-cartoon-drawing-muslim-kids-child-face-photography.png",
      phoneNumber: "08567456887690",
    );
  }
}
