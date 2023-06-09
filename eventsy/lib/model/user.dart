class User {
  final String id;
  final String name;
  final String email;
  final int rate;
  final String about;
  final String imagePath;

  User({required this.id, required this.name, required this.email, required this.rate, required this.about, required this.imagePath});

  User copy({
    String? id,
    String? name,String? email,int? rate,String?about,String?imagePath
  }){
    return User(id: id ?? this.id,name: name ?? this.name,email: email ?? this.email, rate: rate ?? this.rate, about: about ?? this.about, imagePath: imagePath ?? this.imagePath);
  }

  static User fromJson(Map<String, dynamic> json) => User(
        id: json['id'],
        imagePath: json['imagePath'],
        name: json['name'],
        email: json['email'],
        rate: json['rate'],
        about: json['about'],
      );

  Map<String, dynamic> toJson() => {
    'id' : id,
    'name' : name,
    'email' : email,
    'rate' : rate,
    'about' : about,
    'imagePath' : imagePath
  };
}
