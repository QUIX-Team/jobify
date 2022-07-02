class Profile {
  String name, image, location;
  int followers, following;
  String email;
  Profile(
      {this.name,
      this.image,
      this.location,
      this.followers,
      this.following,
      this.email});

  factory Profile.fromJson(Map<String, dynamic> json) {
    return Profile(
      name: json["name"],
      image: json["image"],
      location: json["location"],
      followers: int.parse(json["followers"]),
      following: int.parse(json["following"]),
      email: json["email"],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "image": image,
      "location": location,
      "followers": followers,
      "following": following,
      "email": email,
    };
  }
}
