// To parse this JSON data, do
//
//     final appStore = appStoreFromJson(jsonString);

import 'dart:convert';

AppStore appStoreFromJson(String str) => AppStore.fromJson(json.decode(str));

String appStoreToJson(AppStore data) => json.encode(data.toJson());

// FOR APP

class AppStore {
  AppStore({
    required this.syncServerUrl,
    required this.serverUrl,
    required this.appEvent,
    required this.appState,
    required this.adhesion,
    required this.adhesionRequired,
    required this.userConnected,
  });

  String syncServerUrl;
  String serverUrl;
  AppEvent appEvent;
  AppState appState;
  Adhesion adhesion;
  AdhesionRequired adhesionRequired;
  UserConnected userConnected;

  AppStore copyWith({
    String? syncServerUrl,
    String? serverUrl,
    AppEvent? appEvent,
    AppState? appState,
    Adhesion? adhesion,
    AdhesionRequired? adhesionRequired,
    UserConnected? userConnected,
  }) =>
      AppStore(
        syncServerUrl: syncServerUrl ?? this.syncServerUrl,
        serverUrl: serverUrl ?? this.serverUrl,
        appEvent: appEvent ?? this.appEvent,
        appState: appState ?? this.appState,
        adhesion: adhesion ?? this.adhesion,
        adhesionRequired: adhesionRequired ?? this.adhesionRequired,
        userConnected: userConnected ?? this.userConnected,
      );

  factory AppStore.fromJson(Map<String, dynamic> json) => AppStore(
        syncServerUrl: json["syncServerUrl"],
        serverUrl: json["serverUrl"],
        appEvent: AppEvent.fromJson(json["appEvent"]),
        appState: AppState.fromJson(json["appState"]),
        adhesion: Adhesion.fromJson(json["adhesion"]),
        adhesionRequired: AdhesionRequired.fromJson(json["adhesionRequired"]),
        userConnected: UserConnected.fromJson(json["userConnected"]),
      );

  Map<String, dynamic> toJson() => {
        "syncServerUrl": syncServerUrl,
        "serverUrl": serverUrl,
        "appEvent": appEvent.toJson(),
        "appState": appState.toJson(),
        "adhesion": adhesion.toJson(),
        "adhesionRequired": adhesionRequired.toJson(),
        "userConnected": userConnected.toJson(),
      };
}

class AppEvent {
  AppEvent({
    this.wait,
  });

  bool? wait;

  AppEvent copyWith({
    bool? wait,
  }) =>
      AppEvent(
        wait: wait ?? this.wait,
      );

  factory AppEvent.fromJson(Map<String, dynamic> json) => AppEvent(
        wait: json["wait"],
      );

  Map<String, dynamic> toJson() => {
        "wait": wait,
      };
}

class AppState {
  AppState({
    this.contributionAmountInLetter,
    this.connected,
    this.step,
    this.attachmentChoice,
    this.file1,
    this.file2,
    this.file3,
    this.file4,
    this.file5,
    this.documents,
    this.wantAdditional,
    this.wantClaimantOne,
    this.wantClaimantTwo,
    this.cannotNext,
  });

  String? contributionAmountInLetter;
  dynamic connected;
  int? step;
  String? attachmentChoice;
  dynamic file1;
  dynamic file2;
  dynamic file3;
  dynamic file4;
  dynamic file5;
  List<dynamic>? documents;
  String? wantAdditional;
  bool? wantClaimantOne;
  bool? wantClaimantTwo;
  bool? cannotNext;

  AppState copyWith({
    String? contributionAmountInLetter,
    dynamic connected,
    int? step,
    String? attachmentChoice,
    dynamic file1,
    dynamic file2,
    dynamic file3,
    dynamic file4,
    dynamic file5,
    List<dynamic>? documents,
    String? wantAdditional,
    bool? wantClaimantOne,
    bool? wantClaimantTwo,
    bool? cannotNext,
  }) =>
      AppState(
        contributionAmountInLetter:
            contributionAmountInLetter ?? this.contributionAmountInLetter,
        connected: connected ?? this.connected,
        step: step ?? this.step,
        attachmentChoice: attachmentChoice ?? this.attachmentChoice,
        file1: file1 ?? this.file1,
        file2: file2 ?? this.file2,
        file3: file3 ?? this.file3,
        file4: file4 ?? this.file4,
        file5: file5 ?? this.file5,
        documents: documents ?? this.documents,
        wantAdditional: wantAdditional ?? this.wantAdditional,
        wantClaimantOne: wantClaimantOne ?? this.wantClaimantOne,
        wantClaimantTwo: wantClaimantTwo ?? this.wantClaimantTwo,
        cannotNext: cannotNext ?? this.cannotNext,
      );

  factory AppState.fromJson(Map<String, dynamic> json) => AppState(
        contributionAmountInLetter: json["contributionAmountInLetter"],
        connected: json["connected"],
        step: json["step"],
        attachmentChoice: json["attachmentChoice"],
        file1: json["file1"],
        file2: json["file2"],
        file3: json["file3"],
        file4: json["file4"],
        file5: json["file5"],
        documents: json["documents"] == null
            ? []
            : List<dynamic>.from(json["documents"]!.map((x) => x)),
        wantAdditional: json["wantAdditional"],
        wantClaimantOne: json["wantClaimantOne"],
        wantClaimantTwo: json["wantClaimantTwo"],
        cannotNext: json["cannotNext"],
      );

  Map<String, dynamic> toJson() => {
        "contributionAmountInLetter": contributionAmountInLetter,
        "connected": connected,
        "step": step,
        "attachmentChoice": attachmentChoice,
        "file1": file1,
        "file2": file2,
        "file3": file3,
        "file4": file4,
        "file5": file5,
        "documents": documents == null
            ? []
            : List<dynamic>.from(documents!.map((x) => x)),
        "wantAdditional": wantAdditional,
        "wantClaimantOne": wantClaimantOne,
        "wantClaimantTwo": wantClaimantTwo,
        "cannotNext": cannotNext,
      };
}

class AdhesionRequired {
  AdhesionRequired({
    required this.adherent,
    required this.additional,
    required this.claimant,
  });

  Map<String, bool> adherent;
  Map<String, bool> additional;
  Map<String, bool> claimant;

  AdhesionRequired copyWith({
    Map<String, bool>? adherent,
    Map<String, bool>? additional,
    Map<String, bool>? claimant,
  }) =>
      AdhesionRequired(
        adherent: adherent ?? this.adherent,
        additional: additional ?? this.additional,
        claimant: claimant ?? this.claimant,
      );

  factory AdhesionRequired.fromJson(Map<String, dynamic> json) =>
      AdhesionRequired(
        adherent: Map.from(json["adherent"]!)
            .map((k, v) => MapEntry<String, bool>(k, v)),
        additional: Map.from(json["additional"]!)
            .map((k, v) => MapEntry<String, bool>(k, v)),
        claimant: Map.from(json["claimant"]!)
            .map((k, v) => MapEntry<String, bool>(k, v)),
      );

  Map<String, dynamic> toJson() => {
        "adherent":
            Map.from(adherent).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "additional":
            Map.from(additional).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "claimant":
            Map.from(claimant).map((k, v) => MapEntry<String, dynamic>(k, v)),
      };
}

// DATA

class Adhesion {
  Adhesion({
    this.uuid,
    this.actor,
    this.adherent,
    this.additional,
    this.claimantOne,
    this.claimantTwo,
  });

  String? uuid;
  String? actor;
  Adherent? adherent;
  AdhesionAdditional? additional;
  Claimant? claimantOne;
  Claimant? claimantTwo;

  Adhesion copyWith({
    String? uuid,
    String? actor,
    Adherent? adherent,
    AdhesionAdditional? additional,
    Claimant? claimantOne,
    Claimant? claimantTwo,
  }) =>
      Adhesion(
        uuid: uuid ?? this.uuid,
        actor: actor ?? this.actor,
        adherent: adherent ?? this.adherent,
        additional: additional ?? this.additional,
        claimantOne: claimantOne ?? this.claimantOne,
        claimantTwo: claimantTwo ?? this.claimantTwo,
      );

  factory Adhesion.fromJson(Map<String, dynamic> json) => Adhesion(
        uuid: json["uuid"],
        actor: json["actor"],
        adherent: json["adherent"] == null
            ? null
            : Adherent.fromJson(json["adherent"]),
        additional: json["additional"] == null
            ? null
            : AdhesionAdditional.fromJson(json["additional"]),
        claimantOne: json["claimantOne"] == null
            ? null
            : Claimant.fromJson(json["claimantOne"]),
        claimantTwo: json["claimantTwo"] == null
            ? null
            : Claimant.fromJson(json["claimantTwo"]),
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "actor": actor,
        "adherent": adherent?.toJson(),
        "additional": additional?.toJson(),
        "claimantOne": claimantOne?.toJson(),
        "claimantTwo": claimantTwo?.toJson(),
      };
}

class AdhesionAdditional {
  AdhesionAdditional({
    this.contributionAmount,
    this.paymentMethod,
    this.periodicity,
    this.effectiveDate,
  });

  dynamic contributionAmount;
  String? paymentMethod;
  String? periodicity;
  String? effectiveDate;

  AdhesionAdditional copyWith({
    dynamic contributionAmount,
    String? paymentMethod,
    String? periodicity,
    String? effectiveDate,
  }) =>
      AdhesionAdditional(
        contributionAmount: contributionAmount ?? this.contributionAmount,
        paymentMethod: paymentMethod ?? this.paymentMethod,
        periodicity: periodicity ?? this.periodicity,
        effectiveDate: effectiveDate ?? this.effectiveDate,
      );

  factory AdhesionAdditional.fromJson(Map<String, dynamic> json) =>
      AdhesionAdditional(
        contributionAmount: json["contributionAmount"],
        paymentMethod: json["paymentMethod"],
        periodicity: json["periodicity"],
        effectiveDate: json["effectiveDate"],
      );

  Map<String, dynamic> toJson() => {
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
  dynamic numberOfChildren;
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
    dynamic numberOfChildren,
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

  bool? isGovernmentEmployee;
  String? nameEndSurname;
  String? familyName;
  String? firstNames;
  String? dateOfBirth;
  String? placeOfBirth;
  String? contact;

  Claimant copyWith({
    bool? isGovernmentEmployee,
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

class UserConnected {
  UserConnected({
    this.accessToken,
    this.refreshToken,
    this.isConnected,
    this.firstName,
    this.lastName,
    this.username,
    this.roles,
  });

  String? accessToken;
  String? refreshToken;
  bool? isConnected;
  String? firstName;
  String? lastName;
  String? username;
  List<String>? roles;

  UserConnected copyWith({
    String? accessToken,
    String? refreshToken,
    bool? isConnected,
    String? firstName,
    String? lastName,
    String? username,
    List<String>? roles,
  }) =>
      UserConnected(
        refreshToken: refreshToken ?? this.refreshToken,
        accessToken: accessToken ?? this.accessToken,
        isConnected: isConnected ?? this.isConnected,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        username: username ?? this.username,
        roles: roles ?? this.roles,
      );

  factory UserConnected.fromJson(Map<String, dynamic> json) => UserConnected(
        accessToken: json["accessToken"],
        refreshToken: json["refreshToken"],
        isConnected: json["isConnected"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        username: json["username"],
        roles: List<String>.from(json["roles"]),
      );

  Map<String, dynamic> toJson() => {
        "accessToken": accessToken,
        "refreshToken": refreshToken,
        "isConnected": isConnected,
        "firstName": firstName,
        "lastName": lastName,
        "username": username,
        "roles": roles,
      };
}
