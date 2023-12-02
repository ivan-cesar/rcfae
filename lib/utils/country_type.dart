// To parse this JSON data, do
//
//     final country = countryFromJson(jsonString);

import 'dart:convert';

List<Country> countryFromJson(String str) => List<Country>.from(json.decode(str).map((x) => Country.fromJson(x)));

String countryToJson(List<Country> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Country {
  Country({
    this.id,
    this.title,
    this.value,
  });

  String? id;
  String? title;
  String? value;

  Country copyWith({
    String? id,
    String? title,
    String? value,
  }) =>
      Country(
        id: id ?? this.id,
        title: title ?? this.title,
        value: value ?? this.value,
      );

  factory Country.fromJson(Map<String, dynamic> json) => Country(
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
