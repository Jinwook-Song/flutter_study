import 'dart:convert';
import 'dart:io';

import 'package:faker/faker.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:shelf/shelf.dart';

part 'profile.g.dart';

@JsonSerializable()
class Profile {
  final String id;
  final String imageUrl;
  final String company;
  final String name;
  final int postCount;
  final int commentCount;
  final int likeCount;

  const Profile({
    this.id = '',
    this.imageUrl = '',
    this.company = '',
    this.name = '',
    this.postCount = 0,
    this.commentCount = 0,
    this.likeCount = 0,
  });

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}

const Profile my = Profile(
  id: 'my_profile',
  imageUrl: 'https://picsum.photos/300/300',
  company: 'Fast campus',
  name: 'jinwook song',
  postCount: 0,
  commentCount: 6,
  likeCount: 14,
);

final List<Profile> otherProfiles = List.generate(
  100,
  (index) => Profile(
    id: 'other_profile_$index',
    imageUrl: 'https://picsum.photos/300/300',
    company: Faker().company.name(),
    name: Faker().person.name(),
    postCount: 0,
    commentCount: 0,
    likeCount: 0,
  ),
);

var myHandler = (Request request) async {
  await Future.delayed(const Duration(seconds: 2));

  return Response.ok(
    jsonEncode(my.toJson()),
    headers: {
      HttpHeaders.contentTypeHeader: ContentType.json.mimeType,
    },
  );
};
