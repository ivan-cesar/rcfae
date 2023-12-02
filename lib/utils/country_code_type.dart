// To parse this JSON data, do
//
//     final countryCode = countryCodeFromJson(jsonString);

import 'dart:convert';

List<CountryCode> countryCodeFromJson(String str) => List<CountryCode>.from(
    json.decode(str).map((x) => CountryCode.fromJson(x)));

String countryCodeToJson(List<CountryCode> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CountryCode {
  CountryCode({
    this.id,
    this.title,
    this.value,
    this.code,
  });

  String? id;
  String? title;
  String? value;
  String? code;

  CountryCode copyWith({
    String? id,
    String? title,
    String? value,
    String? code,
  }) =>
      CountryCode(
        id: id ?? this.id,
        title: title ?? this.title,
        value: value ?? this.value,
        code: code ?? this.code,
      );

  factory CountryCode.fromJson(Map<String, dynamic> json) => CountryCode(
        id: json["id"],
        title: json["title"],
        value: json["value"],
        code: json["code"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "value": value,
        "code": code,
      };
}
