class UserData {
  String? userId;
  String? token;
  String? name;
  String? profilePicture;
  String? email;
  String? address;

  UserData(
      {
        this.userId,
        this.token,
        this.name,
        this.profilePicture,
        this.email,
        this.address,

      });

  UserData.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    userId = json['user_id'];
    name = json['name'];
    profilePicture = json['profile_picture'];
    email = json['email'];
    address = json['address'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['user_id'] = this.userId;
    data['name'] = this.name;
    data['profile_picture'] = this.profilePicture;
    data['email'] = this.email;
    data['address'] = this.address;
    return data;
  }
}
