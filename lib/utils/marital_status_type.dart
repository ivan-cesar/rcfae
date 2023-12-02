// To parse this JSON data, do
//
//     final maritalStatus = maritalStatusFromJson(jsonString);

import 'dart:convert';

List<MaritalStatus> maritalStatusFromJson(String str) => List<MaritalStatus>.from(
    json.decode(str).map((x) => MaritalStatus.fromJson(x)));

String maritalStatusToJson(List<MaritalStatus> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MaritalStatus {
  MaritalStatus({
    this.id,
    this.title,
    this.value,
  });

  String? id;
  String? title;
  String? value;

  MaritalStatus copyWith({
    String? id,
    String? title,
    String? value,
  }) =>
      MaritalStatus(
        id: id ?? this.id,
        title: title ?? this.title,
        value: value ?? this.value,
      );

  factory MaritalStatus.fromJson(Map<String, dynamic> json) => MaritalStatus(
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
