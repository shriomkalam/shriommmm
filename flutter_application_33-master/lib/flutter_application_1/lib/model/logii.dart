// To parse this JSON data, do
//
//     final shrio = shrioFromJson(jsonString);

import 'dart:convert';

Shrio shrioFromJson(String str) => Shrio.fromJson(json.decode(str));

String shrioToJson(Shrio data) => json.encode(data.toJson());

class Shrio {
    User user;
    String token;

    Shrio({
        required this.user,
        required this.token,
    });

    factory Shrio.fromJson(Map<String, dynamic> json) => Shrio(
        user: User.fromJson(json["user"]),
        token: json["token"],
    );

    Map<String, dynamic> toJson() => {
        "user": user.toJson(),
        "token": token,
    };
}

class User {
    String id;
    String email;
    String password;
    int v;

    User({
        required this.id,
        required this.email,
        required this.password,
        required this.v,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["_id"],
        email: json["email"],
        password: json["password"],
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "email": email,
        "password": password,
        "__v": v,
    };
}
