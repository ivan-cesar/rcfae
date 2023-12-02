// To parse this JSON data, do
//
//     final city = cityFromJson(jsonString);

import 'dart:convert';

List<City> cityFromJson(String str) => List<City>.from(json.decode(str).map((x) => City.fromJson(x)));

String cityToJson(List<City> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class City {
  City({
    this.id,
    this.title,
    this.value,
  });

  String? id;
  String? title;
  String? value;

  City copyWith({
    String? id,
    String? title,
    String? value,
  }) =>
      City(
        id: id ?? this.id,
        title: title ?? this.title,
        value: value ?? this.value,
      );

  factory City.fromJson(Map<String, dynamic> json) => City(
    id: json["id"],
    title: json["title"],
    value: json["value"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "value": value,
  };
}
