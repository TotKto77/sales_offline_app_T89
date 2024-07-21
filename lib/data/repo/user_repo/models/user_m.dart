class User {
  final String companyName;
  final String imagePath;

  User({
    required this.companyName,
    required this.imagePath,
  });

  Map<String, String> toJson() {
    return {
      'companyName': companyName,
      'imagePath': imagePath,
    };
  }

  factory User.fromJson(Map<String, String> json) {
    return User(
      companyName: json['companyName'] ?? 'companyName',
      imagePath: json['imagePath'] ?? 'imagePath',
    );
  }
}
