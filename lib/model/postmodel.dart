// To parse this JSON data, do
//
//     final blog = blogFromJson(jsonString);

import 'dart:convert';

Blog blogFromJson(String str) => Blog.fromJson(json.decode(str));

String blogToJson(Blog data) => json.encode(data.toJson());

class Blog {
  String name;
  String mob;
  String adrs;
  String pincode;
  String email;
  String pass;

  Blog({
    required this.name,
    required this.mob,
    required this.adrs,
    required this.pincode,
    required this.email,
    required this.pass,
  });

  factory Blog.fromJson(Map<String, dynamic> json) => Blog(
    name: json["name"],
    mob: json["mob"],
    adrs: json["adrs"],
    pincode: json["pincode"],
    email: json["email"],
    pass: json["pass"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "mob": mob,
    "adrs": adrs,
    "pincode": pincode,
    "email": email,
    "pass": pass,
  };
}
