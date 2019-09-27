class UserEntity {
  int id;
  String username;
  String password;
  String email;
  String token;

  UserEntity({
    this.id,
    this.username,
    this.password,
    this.email,
    this.token
  });

  factory UserEntity.fromJson(Map<String, dynamic> json) {
    return UserEntity(
      id: json['id'],
      username: json['username'],
      password: json['password'],
      email: json['email'],
      token: json['token']
    );
  }
}