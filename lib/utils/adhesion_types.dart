// To parse this JSON data, do
//
//     final adhesion = adhesionFromJson(jsonString);

import 'dart:convert';

List<Adhesion> adhesionsFromJson(String str) =>
    List<Adhesion>.from(json.decode(str).map((x) => Adhesion.fromJson(x)));

Adhesion adhesionFromJson(String str) => Adhesion.fromJson(json.decode(str));

String adhesionToJson(Adhesion data) => json.encode(data.toJson());

class Adhesion {
  Adhesion({
    this.cannotNext,
    this.connected,
    this.wantAdditional,
    this.uuid,
    this.wait,
    this.actor,
    this.step,
    this.documents,
    this.adherent,
    this.additional,
    this.claimant01,
    this.claimant02,
    this.wantClaimant01,
    this.wantClaimant02,
    this.file1,
    this.file2,
    this.file3,
    this.file4,
    this.file5,
  });

  bool? cannotNext;
  dynamic connected;
  String? uuid;
  String? wantAdditional;
  bool? wait;
  String? actor;
  int? step;
  List<dynamic>? documents;
  Adherent? adherent;
  Additional? additional;
  Claimant? claimant01;
  Claimant? claimant02;
  bool? wantClaimant01;
  bool? wantClaimant02;
  dynamic file1;
  dynamic file2;
  dynamic file3;
  dynamic file4;
  dynamic file5;

  Adhesion copyWith({
    bool? cannotNext,
    dynamic connected,
    String? uuid,
    String? wantAdditional,
    bool? wait,
    String? actor,
    int? step,
    List<dynamic>? documents,
    Adherent? adherent,
    Additional? additional,
    Claimant? claimant01,
    Claimant? claimant02,
    bool? wantClaimant01,
    bool? wantClaimant02,
    dynamic file1,
    dynamic file2,
    dynamic file3,
    dynamic file4,
    dynamic file5,
  }) =>
      Adhesion(
        cannotNext: cannotNext ?? this.cannotNext,
        connected: connected ?? this.connected,
        uuid: uuid ?? this.uuid,
        wantAdditional: wantAdditional ?? this.wantAdditional,
        wait: wait ?? this.wait,
        actor: actor ?? this.actor,
        step: step ?? this.step,
        documents: documents ?? this.documents,
        adherent: adherent ?? this.adherent,
        additional: additional ?? this.additional,
        claimant01: claimant01 ?? this.claimant01,
        claimant02: claimant02 ?? this.claimant02,
        wantClaimant01: wantClaimant01 ?? this.wantClaimant01,
        wantClaimant02: wantClaimant02 ?? this.wantClaimant02,
        file1: file1 ?? this.file1,
        file2: file2 ?? this.file2,
        file3: file3 ?? this.file3,
        file4: file4 ?? this.file4,
        file5: file5 ?? this.file5,
      );

  factory Adhesion.fromJson(Map<String, dynamic> json) => Adhesion(
        cannotNext: json["cannotNext"],
        connected: json["connected"],
        uuid: json["uuid"],
        wantAdditional: json["wantAdditional"],
        wait: json["wait"],
        actor: json["actor"],
        step: json["step"],
        documents: json["documents"] == null
            ? []
            : List<dynamic>.from(json["documents"]!.map((x) => x)),
        adherent: json["adherent"] == null
            ? null
            : Adherent.fromJson(json["adherent"]),
        additional: json["additional"] == null
            ? null
            : Additional.fromJson(json["additional"]),
        claimant01: json["claimant01"] == null
            ? null
            : Claimant.fromJson(json["claimant01"]),
        claimant02: json["claimant02"] == null
            ? null
            : Claimant.fromJson(json["claimant02"]),
        wantClaimant01: json["wantClaimant01"],
        wantClaimant02: json["wantClaimant02"],
        file1: json["file1"],
        file2: json["file2"],
        file3: json["file3"],
        file4: json["file4"],
        file5: json["file5"],
      );

  Map<String, dynamic> toJson() => {
        "cannotNext": cannotNext,
        "connected": connected,
        "uuid": uuid,
        "wantAdditional": wantAdditional,
        "wait": wait,
        "actor": actor,
        "step": step,
        "documents": documents == null
            ? []
            : List<dynamic>.from(documents!.map((x) => x)),
        "adherent": adherent?.toJson(),
        "additional": additional?.toJson(),
        "claimant01": claimant01?.toJson(),
        "claimant02": claimant02?.toJson(),
        "wantClaimant01": wantClaimant01,
        "wantClaimant02": wantClaimant02,
        "file1": file1,
        "file2": file2,
        "file3": file3,
        "file4": file4,
        "file5": file5,
      };
}

class Additional {
  Additional({
    this.choice,
    this.contributionAmount,
    this.paymentMethod,
    this.periodicity,
    this.effectiveDate,
  });

  String? choice;
  int? contributionAmount;
  String? paymentMethod;
  String? periodicity;
  String? effectiveDate;

  Additional copyWith({
    String? choice,
    int? contributionAmount,
    String? paymentMethod,
    String? periodicity,
    String? effectiveDate,
  }) =>
      Additional(
        choice: choice ?? this.choice,
        contributionAmount: contributionAmount ?? this.contributionAmount,
        paymentMethod: paymentMethod ?? this.paymentMethod,
        periodicity: periodicity ?? this.periodicity,
        effectiveDate: effectiveDate ?? this.effectiveDate,
      );

  factory Additional.fromJson(Map<String, dynamic> json) => Additional(
        choice: json["choice"],
        contributionAmount: json["contributionAmount"],
        paymentMethod: json["paymentMethod"],
        periodicity: json["periodicity"],
        effectiveDate: json["effectiveDate"],
      );

  Map<String, dynamic> toJson() => {
        "choice": choice,
        "contributionAmount": contributionAmount,
        "paymentMethod": paymentMethod,
        "periodicity": periodicity,
        "effectiveDate": effectiveDate,
      };
}

class Adherent {
  Adherent({
    this.civility,
    this.countryCode,
    this.familyName,
    this.firstNames,
    this.placeOfBirth,
    this.employingOrganization,
    this.personnelNumber,
    this.socialSecurityNumber,
    this.maritalStatus,
    this.numberOfChildren,
    this.telephoneContact,
    this.email,
    this.country,
    this.city,
    this.area,
    this.geographicalAddress,
    this.dateOfBirth,
  });

  String? civility;
  String? countryCode;
  String? familyName;
  String? firstNames;
  String? placeOfBirth;
  String? employingOrganization;
  String? personnelNumber;
  String? socialSecurityNumber;
  String? maritalStatus;
  int? numberOfChildren;
  String? telephoneContact;
  String? email;
  String? country;
  String? city;
  String? area;
  String? geographicalAddress;
  String? dateOfBirth;

  Adherent copyWith({
    String? civility,
    String? countryCode,
    String? familyName,
    String? firstNames,
    String? placeOfBirth,
    String? employingOrganization,
    String? personnelNumber,
    String? socialSecurityNumber,
    String? maritalStatus,
    int? numberOfChildren,
    String? telephoneContact,
    String? email,
    String? country,
    String? city,
    String? area,
    String? geographicalAddress,
    String? dateOfBirth,
  }) =>
      Adherent(
        civility: civility ?? this.civility,
        countryCode: countryCode ?? this.countryCode,
        familyName: familyName ?? this.familyName,
        firstNames: firstNames ?? this.firstNames,
        placeOfBirth: placeOfBirth ?? this.placeOfBirth,
        employingOrganization:
            employingOrganization ?? this.employingOrganization,
        personnelNumber: personnelNumber ?? this.personnelNumber,
        socialSecurityNumber: socialSecurityNumber ?? this.socialSecurityNumber,
        maritalStatus: maritalStatus ?? this.maritalStatus,
        numberOfChildren: numberOfChildren ?? this.numberOfChildren,
        telephoneContact: telephoneContact ?? this.telephoneContact,
        email: email ?? this.email,
        country: country ?? this.country,
        city: city ?? this.city,
        area: area ?? this.area,
        geographicalAddress: geographicalAddress ?? this.geographicalAddress,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      );

  factory Adherent.fromJson(Map<String, dynamic> json) => Adherent(
        civility: json["civility"],
        countryCode: json["countryCode"],
        familyName: json["familyName"],
        firstNames: json["firstNames"],
        placeOfBirth: json["placeOfBirth"],
        employingOrganization: json["employingOrganization"],
        personnelNumber: json["personnelNumber"],
        socialSecurityNumber: json["socialSecurityNumber"],
        maritalStatus: json["maritalStatus"],
        numberOfChildren: json["numberOfChildren"],
        telephoneContact: json["telephoneContact"],
        email: json["email"],
        country: json["country"],
        city: json["city"],
        area: json["area"],
        geographicalAddress: json["geographicalAddress"],
        dateOfBirth: json["dateOfBirth"],
      );

  Map<String, dynamic> toJson() => {
        "civility": civility,
        "countryCode": countryCode,
        "familyName": familyName,
        "firstNames": firstNames,
        "placeOfBirth": placeOfBirth,
        "employingOrganization": employingOrganization,
        "personnelNumber": personnelNumber,
        "socialSecurityNumber": socialSecurityNumber,
        "maritalStatus": maritalStatus,
        "numberOfChildren": numberOfChildren,
        "telephoneContact": telephoneContact,
        "email": email,
        "country": country,
        "city": city,
        "area": area,
        "geographicalAddress": geographicalAddress,
        "dateOfBirth": dateOfBirth,
      };
}

class Claimant {
  Claimant({
    this.isGovernmentEmployee,
    this.nameEndSurname,
    this.familyName,
    this.firstNames,
    this.dateOfBirth,
    this.placeOfBirth,
    this.contact,
  });

  String? isGovernmentEmployee;
  String? nameEndSurname;
  String? familyName;
  String? firstNames;
  String? dateOfBirth;
  String? placeOfBirth;
  String? contact;

  Claimant copyWith({
    String? isGovernmentEmployee,
    String? nameEndSurname,
    String? familyName,
    String? firstNames,
    String? dateOfBirth,
    String? placeOfBirth,
    String? contact,
  }) =>
      Claimant(
        isGovernmentEmployee: isGovernmentEmployee ?? this.isGovernmentEmployee,
        nameEndSurname: nameEndSurname ?? this.nameEndSurname,
        familyName: familyName ?? this.familyName,
        firstNames: firstNames ?? this.firstNames,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        placeOfBirth: placeOfBirth ?? this.placeOfBirth,
        contact: contact ?? this.contact,
      );

  factory Claimant.fromJson(Map<String, dynamic> json) => Claimant(
        isGovernmentEmployee: json["isGovernmentEmployee"],
        nameEndSurname: json["nameEndSurname"],
        familyName: json["familyName"],
        firstNames: json["firstNames"],
        dateOfBirth: json["dateOfBirth"],
        placeOfBirth: json["placeOfBirth"],
        contact: json["contact"],
      );

  Map<String, dynamic> toJson() => {
        "isGovernmentEmployee": isGovernmentEmployee,
        "nameEndSurname": nameEndSurname,
        "familyName": familyName,
        "firstNames": firstNames,
        "dateOfBirth": dateOfBirth,
        "placeOfBirth": placeOfBirth,
        "contact": contact,
      };
}
