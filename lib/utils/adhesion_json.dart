
import 'dart:convert';

import 'package:cgrae_enrollment/utils/app_store_types.dart';

Adhesion adhesionFromJson(String str) => Adhesion.fromJson(json.decode(str));

String adhesionToJson(Adhesion data) => json.encode(data.toJson());

List<Adhesion> adhesionsFromJson(String str) =>
    List<Adhesion>.from(json.decode(str).map((x) => Adhesion.fromJson(x)));