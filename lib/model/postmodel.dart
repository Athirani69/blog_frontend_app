// To parse this JSON data, do
//
//     final blog = blogFromJson(jsonString);

import 'dart:convert';

List<Blog> blogFromJson(String str) => List<Blog>.from(json.decode(str).map((x) => Blog.fromJson(x)));

String blogToJson(List<Blog> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Blog {
  String id;
  UserId userId;
  String post;
  DateTime postedDate;
  int v;

  Blog({
    required this.id,
    required this.userId,
    required this.post,
    required this.postedDate,
    required this.v,
  });

  factory Blog.fromJson(Map<String, dynamic> json) => Blog(
    id: json["_id"],
    userId: UserId.fromJson(json["userId"]),
    post: json["post"],
    postedDate: DateTime.parse(json["postedDate"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "userId": userId.toJson(),
    "post": post,
    "postedDate": postedDate.toIso8601String(),
    "__v": v,
  };
}

class UserId {
  String name;
  String mob;
  String adrs;
  String email;

  UserId({
    required this.name,
    required this.mob,
    required this.adrs,
    required this.email,
  });

  factory UserId.fromJson(Map<String, dynamic> json) => UserId(
    name: json["name"],
    mob: json["mob"],
    adrs: json["adrs"],
    email: json["email"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "mob": mob,
    "adrs": adrs,
    "email": email,
  };
}
