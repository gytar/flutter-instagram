// ignore: file_names
import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String email;
  final String id;
  final String username;
  final String displayName;
  final String bio;
  final Map followers;
  final Map following;

  const User({
    this.email,
    this.id,
    this.username,
    this.displayName,
    this.bio,
    this.followers,
    this.following,
  });

  factory User.fromDocument(DocumentSnapshot document) {
    return User(
      email: document['email'],
      id: document['id'],
      username: document['username'],
      displayName: document['displayName'],
      bio: document['bio'],
      followers: document['followers'],
      following: document['following'],
    );
  }
}
