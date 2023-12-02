// To parse this JSON data, do
//
//     final optionType = optionTypeFromJson(jsonString);

import 'dart:convert';

List<OptionType> optionTypeFromJson(String str) =>
    List<OptionType>.from(json.decode(str).map((x) => OptionType.fromJson(x)));

String optionTypeToJson(List<OptionType> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class OptionType {
  OptionType({
    this.id,
    this.title,
    this.value,
  });

  String? id;
  String? title;
  String? value;

  OptionType copyWith({
    String? id,
    String? title,
    String? value,
  }) =>
      OptionType(
        id: id ?? this.id,
        title: title ?? this.title,
        value: value ?? this.value,
      );

  factory OptionType.fromJson(Map<String, dynamic> json) => OptionType(
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
