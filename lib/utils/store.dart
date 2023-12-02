import 'package:cgrae_enrollment/utils/app_store_types.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

final moonLanding = DateTime.utc(1969, 7, 20, 20, 18, 04);
final isoDate = "";
final _uuid = Uuid();

class Store extends GetxController {
  AppStore appStore = appStoreInit.copyWith();

  void updateAppStore(AppStore _appStore) {
    appStore = _appStore;
    update();
  }

  void updateAdhesion(Adhesion adhesion) {
    appStore.adhesion = adhesion;
    update();
  }

  void updateAppState(AppState appState) {
    appStore.appState = appState;
    update();
  }

  void resetAdhesion() {
    appStore = appStoreFromJson(initJson);
    appStore.adhesion = appStoreFromJson(initJson).adhesion;
    appStore.adhesion.uuid = _uuid.v4();
    update();
  }

  void resetAppStore() {
    print("resetAppStore");
    appStore = appStoreFromJson(initJson);
    appStore.adhesion.uuid = _uuid.v4();
    update();
  }


}

String now = DateFormat('dd/MM/yyyy').format(DateTime.now());

AppStore appStoreInit = appStoreFromJson(initJson);

//String syncServerUrl = "http://10.0.2.2:8088";
String syncServerUrl = "http://38.242.207.83:8088"; // Production
String serverUrl = "http://38.242.207.83:9101"; // Production

// ** json init **
String initJson = """
{
  "syncServerUrl": "$syncServerUrl",
  "serverUrl": "$serverUrl",
  "userConnected":{
    "accessToken": "",
    "refreshToken": "",
    "isConnected": false,
    "id": "",
    "firstName": "",
    "lastName": "",
    "username": "",
    "roles": [],
    "date": "$isoDate"
  },
  "appEvent": {
    "wait": false
  },
  "appState": {
    "contributionAmountInLetter": "",
    "connected": null,
    "step": 0,
    "attachmentChoice": "",
    "file1": null,
    "file2": null,
    "file3": null,
    "file4": null,
    "file5": null,
    "documents": [],
    "wantAdditional": "",
    "wantClaimantOne": false,
    "wantClaimantTwo": false,
    "cannotNext": true
  },
  "adhesion": {
    "uuid": "${_uuid.v4()}",
    "actor": "MOBILE",
    "adherent": {
      "civility": "",
      "familyName": "",
      "firstNames": "",
      "placeOfBirth": "",
      "employingOrganization": "",
      "personnelNumber": "",
      "socialSecurityNumber": "",
      "maritalStatus": "",
      "numberOfChildren": 0,
      "telephoneContact": "",
      "countryCode": "+225",
      "country": "CÔTE D'IVOIRE",
      "email": "",
      "city": "",
      "area": "",
      "geographicalAddress": "",
      "dateOfBirth": "$isoDate"
    },
    "additional": {
      "contributionAmount": 0,
      "paymentMethod": "",
      "periodicity": "",
      "effectiveDate":  "$isoDate"
    },
    "claimantOne": {
      "isGovernmentEmployee": false,
      "nameEndSurname": "",
      "familyName": "",
      "firstNames": "",
      "dateOfBirth":  "$isoDate",
      "placeOfBirth": "",
      "contact": ""
    },
    "claimantTwo": {
      "isGovernmentEmployee": false,
      "nameEndSurname": "",
      "familyName": "",
      "firstNames": "",
      "dateOfBirth":  "$isoDate",
      "placeOfBirth": "",
      "contact": ""
    }
  },
  "adhesionRequired": {
    "adherent": {
      "civility": true,
      "familyName": true,
      "firstNames": true,
      "dateOfBirth": true,
      "placeOfBirth": true,
      "employingOrganization": true,
      "personnelNumber": true,
      "socialSecurityNumber": false,
      "maritalStatus": true,
      "numberOfChildren": true,
      "countryCode": true,
      "telephoneContact": true,
      "email": false,
      "country": true,
      "city": true,
      "area": true,
      "geographicalAddress": false
    },
    "additional": {
      "contributionAmount": true,
      "paymentMethod": true,
      "periodicity": true,
      "effectiveDate": true
    },
    "claimant": {
      "isGovernmentEmployee": true,
      "nameEndSurname": true,
      "familyName": false,
      "firstNames": false,
      "dateOfBirth": true,
      "placeOfBirth": true,
      "contact": true
    }
  }
}
""";
