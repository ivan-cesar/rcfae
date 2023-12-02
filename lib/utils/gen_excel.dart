import 'dart:io';

import 'package:cgrae_enrollment/utils/app_store_types.dart';
import 'package:syncfusion_flutter_xlsio/xlsio.dart';

Future<List<int>> genExcel(Adhesion adhesion) async {
  final Workbook workbook = new Workbook();
  final Worksheet sheet = workbook.worksheets[0];

  // sheet.getRangeByName('A1').setText('Hello World');
  // sheet.getRangeByName('A3').setNumber(44);
  // sheet.getRangeByName('A5').setDateTime(DateTime(2020, 12, 12, 1, 10, 20));

  sheet.getRangeByName('A1').setText('Civilité');
  sheet.getRangeByName('B1').setText('Nom');
  sheet.getRangeByName('C1').setText('Prénom(s)');
  sheet.getRangeByName('D1').setText('Date de naissance');
  sheet.getRangeByName('E1').setText('Lieu de naissance');
  sheet.getRangeByName('F1').setText('Organisme employeur');
  sheet.getRangeByName('G1').setText('Matricule');

  sheet.getRangeByName('H1').setText('N° de sécurité social');
  sheet.getRangeByName('I1').setText('Situation matrimoniale');
  sheet.getRangeByName('J1').setText('Nombre d\'enfant');
  sheet.getRangeByName('K1').setText('Indicatif téléphonique');
  sheet.getRangeByName('M1').setText('Téléphone');
  sheet.getRangeByName('N1').setText('email');

  sheet.getRangeByName('L1').setText('Pays');
  sheet.getRangeByName('O1').setText('Ville/commune');
  sheet.getRangeByName('P1').setText('Quartier/Rue');

  sheet.getRangeByName('Q1').setText('Montant de cotisation additionnelle');
  sheet.getRangeByName('R1').setText('Periodicité');
  sheet.getRangeByName('S1').setText('Mode de paiement');
  sheet.getRangeByName('T1').setText('Date d\'effet');

  sheet.getRangeByName('U1').setText('Nom & prénom ayant cause 01');
  sheet.getRangeByName('V1').setText('Date de naissance ayant cause 01');
  sheet.getRangeByName('W1').setText('Lieu de naissance ayant cause 01');
  sheet.getRangeByName('X1').setText('Contact ayant cause 01');
  sheet.getRangeByName('Y1').setText('Fonctionnaire ayant cause 01');

  sheet.getRangeByName('Z1').setText('Nom & prénom ayant cause 01');
  sheet.getRangeByName('AA1').setText('Date de naissance ayant cause 01');
  sheet.getRangeByName('AB1').setText('Lieu de naissance ayant cause 01');
  sheet.getRangeByName('AC1').setText('Contact ayant cause 01');
  sheet.getRangeByName('AD1').setText('Fonctionnaire ayant cause 01');

  sheet.getRangeByName('AE1').setText('ID');
  sheet.getRangeByName('AF1').setText('Enrôleur');

  ////////////////// values
  int i = 0;
  int row = i + 2;
  int col = 1;

  sheet.getRangeByIndex(row, col++).setText(adhesion.adherent!.civility ?? "");
  sheet
      .getRangeByIndex(row, col++)
      .setText(adhesion.adherent!.familyName ?? "");
  sheet
      .getRangeByIndex(row, col++)
      .setText(adhesion.adherent!.firstNames ?? "");
  sheet
      .getRangeByIndex(row, col++)
      .setText(adhesion.adherent!.dateOfBirth ?? "");
  sheet
      .getRangeByIndex(row, col++)
      .setText(adhesion.adherent!.placeOfBirth ?? "");
  sheet
      .getRangeByIndex(row, col++)
      .setText(adhesion.adherent!.employingOrganization ?? "");
  sheet
      .getRangeByIndex(row, col++)
      .setText(adhesion.adherent!.personnelNumber ?? "");

  sheet
      .getRangeByIndex(row, col++)
      .setText(adhesion.adherent!.socialSecurityNumber ?? "");
  sheet
      .getRangeByIndex(row, col++)
      .setText(adhesion.adherent!.maritalStatus ?? "");
  sheet
      .getRangeByIndex(row, col++)
      .setText(adhesion.adherent!.numberOfChildren!.toString());
  sheet
      .getRangeByIndex(row, col++)
      .setText(adhesion.adherent!.countryCode ?? "");
  sheet
      .getRangeByIndex(row, col++)
      .setText(adhesion.adherent!.personnelNumber ?? "");
  sheet.getRangeByIndex(row, col++).setText(adhesion.adherent!.email ?? "");

  sheet.getRangeByIndex(row, col++).setText(adhesion.adherent!.country ?? "");
  sheet.getRangeByIndex(row, col++).setText(adhesion.adherent!.city ?? "");
  sheet.getRangeByIndex(row, col++).setText(adhesion.adherent!.area ?? "");

  if (adhesion.additional != null) {
    sheet
        .getRangeByIndex(row, col++)
        .setText(adhesion.additional!.contributionAmount!.toString());
    sheet
        .getRangeByIndex(row, col++)
        .setText(adhesion.additional!.periodicity ?? "");
    sheet
        .getRangeByIndex(row, col++)
        .setText(adhesion.additional!.paymentMethod ?? "");
    sheet
        .getRangeByIndex(row, col++)
        .setText(adhesion.additional!.effectiveDate ?? "");
  }

  if (adhesion.claimantOne != null) {
    sheet
        .getRangeByIndex(row, col++)
        .setText(adhesion.claimantOne!.nameEndSurname ?? "");
    sheet
        .getRangeByIndex(row, col++)
        .setText(adhesion.claimantOne!.dateOfBirth ?? "");
    sheet
        .getRangeByIndex(row, col++)
        .setText(adhesion.claimantOne!.placeOfBirth ?? "");
    sheet
        .getRangeByIndex(row, col++)
        .setText(adhesion.claimantOne!.contact ?? "");
    sheet
        .getRangeByIndex(row, col++)
        .setText(adhesion.claimantOne!.isGovernmentEmployee.toString() ?? "");
  }

  if (adhesion.claimantTwo != null) {
    sheet
        .getRangeByIndex(row, col++)
        .setText(adhesion.claimantTwo!.nameEndSurname ?? "");
    sheet
        .getRangeByIndex(row, col++)
        .setText(adhesion.claimantTwo!.dateOfBirth ?? "");
    sheet
        .getRangeByIndex(row, col++)
        .setText(adhesion.claimantTwo!.placeOfBirth ?? "");
    sheet
        .getRangeByIndex(row, col++)
        .setText(adhesion.claimantTwo!.contact ?? "");
    sheet
        .getRangeByIndex(row, col++)
        .setText(adhesion.claimantTwo!.isGovernmentEmployee.toString() ?? "");
  }

  sheet.getRangeByIndex(row, col++).setText(adhesion.uuid ?? "");
  sheet.getRangeByIndex(row, col++).setText(adhesion.actor ?? "");

  final List<int> bytes = workbook.saveAsStream();
  // File file = await File('AddingTextNumberDateTime.xlsx').writeAsBytes(bytes);
  workbook.dispose();

  return bytes;
}

Future<List<int>> genExcelForAll(List<Adhesion> ahesions) async {
  final Workbook workbook = new Workbook();
  final Worksheet sheet = workbook.worksheets[0];

  // sheet.getRangeByName('A1').setText('Hello World');
  // sheet.getRangeByName('A3').setNumber(44);
  // sheet.getRangeByName('A5').setDateTime(DateTime(2020, 12, 12, 1, 10, 20));

  sheet.getRangeByName('A1').setText('Civilité');
  sheet.getRangeByName('B1').setText('Nom');
  sheet.getRangeByName('C1').setText('Prénom(s)');
  sheet.getRangeByName('D1').setText('Date de naissance');
  sheet.getRangeByName('E1').setText('Lieu de naissance');
  sheet.getRangeByName('F1').setText('Organisme employeur');
  sheet.getRangeByName('G1').setText('Matricule');

  sheet.getRangeByName('H1').setText('N° de sécurité social');
  sheet.getRangeByName('I1').setText('Situation matrimoniale');
  sheet.getRangeByName('J1').setText('Nombre d\'enfant');
  sheet.getRangeByName('K1').setText('Indicatif téléphonique');
  sheet.getRangeByName('M1').setText('Téléphone');
  sheet.getRangeByName('N1').setText('email');

  sheet.getRangeByName('L1').setText('Pays');
  sheet.getRangeByName('O1').setText('Ville/commune');
  sheet.getRangeByName('P1').setText('Quartier/Rue');

  sheet.getRangeByName('Q1').setText('Montant de cotisation additionnelle');
  sheet.getRangeByName('R1').setText('Periodicité');
  sheet.getRangeByName('S1').setText('Mode de paiement');
  sheet.getRangeByName('T1').setText('Date d\'effet');

  sheet.getRangeByName('U1').setText('Nom & prénom ayant cause 01');
  sheet.getRangeByName('V1').setText('Date de naissance ayant cause 01');
  sheet.getRangeByName('W1').setText('Lieu de naissance ayant cause 01');
  sheet.getRangeByName('X1').setText('Contact ayant cause 01');
  sheet.getRangeByName('Y1').setText('Fonctionnaire ayant cause 01');

  sheet.getRangeByName('Z1').setText('Nom & prénom ayant cause 01');
  sheet.getRangeByName('AA1').setText('Date de naissance ayant cause 01');
  sheet.getRangeByName('AB1').setText('Lieu de naissance ayant cause 01');
  sheet.getRangeByName('AC1').setText('Contact ayant cause 01');
  sheet.getRangeByName('AD1').setText('Fonctionnaire ayant cause 01');

  sheet.getRangeByName('AE1').setText('ID');
  sheet.getRangeByName('AF1').setText('Enrôleur');

  ////////////////// values

  for (int i = 0; i < ahesions.length; i++) {
    Adhesion adhesion = ahesions[i];
    int row = i + 2;
    int col = 1;

    sheet
        .getRangeByIndex(row, col++)
        .setText(adhesion.adherent!.civility ?? "");
    sheet
        .getRangeByIndex(row, col++)
        .setText(adhesion.adherent!.familyName ?? "");
    sheet
        .getRangeByIndex(row, col++)
        .setText(adhesion.adherent!.firstNames ?? "");
    sheet
        .getRangeByIndex(row, col++)
        .setText(adhesion.adherent!.dateOfBirth ?? "");
    sheet
        .getRangeByIndex(row, col++)
        .setText(adhesion.adherent!.placeOfBirth ?? "");
    sheet
        .getRangeByIndex(row, col++)
        .setText(adhesion.adherent!.employingOrganization ?? "");
    sheet
        .getRangeByIndex(row, col++)
        .setText(adhesion.adherent!.personnelNumber ?? "");

    sheet
        .getRangeByIndex(row, col++)
        .setText(adhesion.adherent!.socialSecurityNumber ?? "");
    sheet
        .getRangeByIndex(row, col++)
        .setText(adhesion.adherent!.maritalStatus ?? "");
    sheet
        .getRangeByIndex(row, col++)
        .setText(adhesion.adherent!.numberOfChildren!.toString());
    sheet
        .getRangeByIndex(row, col++)
        .setText(adhesion.adherent!.countryCode ?? "");
    sheet
        .getRangeByIndex(row, col++)
        .setText(adhesion.adherent!.personnelNumber ?? "");
    sheet.getRangeByIndex(row, col++).setText(adhesion.adherent!.email ?? "");

    sheet.getRangeByIndex(row, col++).setText(adhesion.adherent!.country ?? "");
    sheet.getRangeByIndex(row, col++).setText(adhesion.adherent!.city ?? "");
    sheet.getRangeByIndex(row, col++).setText(adhesion.adherent!.area ?? "");

    sheet
        .getRangeByIndex(row, col++)
        .setText(adhesion.additional!.contributionAmount!.toString());
    sheet
        .getRangeByIndex(row, col++)
        .setText(adhesion.additional!.periodicity ?? "");
    sheet
        .getRangeByIndex(row, col++)
        .setText(adhesion.additional!.paymentMethod ?? "");
    sheet
        .getRangeByIndex(row, col++)
        .setText(adhesion.additional!.effectiveDate ?? "");

    sheet
        .getRangeByIndex(row, col++)
        .setText(adhesion.claimantOne!.nameEndSurname ?? "");
    sheet
        .getRangeByIndex(row, col++)
        .setText(adhesion.claimantOne!.dateOfBirth ?? "");
    sheet
        .getRangeByIndex(row, col++)
        .setText(adhesion.claimantOne!.placeOfBirth ?? "");
    sheet
        .getRangeByIndex(row, col++)
        .setText(adhesion.claimantOne!.contact ?? "");
    sheet
        .getRangeByIndex(row, col++)
        .setText(adhesion.claimantOne!.isGovernmentEmployee.toString() ?? "");

    sheet
        .getRangeByIndex(row, col++)
        .setText(adhesion.claimantTwo!.nameEndSurname ?? "");
    sheet
        .getRangeByIndex(row, col++)
        .setText(adhesion.claimantTwo!.dateOfBirth ?? "");
    sheet
        .getRangeByIndex(row, col++)
        .setText(adhesion.claimantTwo!.placeOfBirth ?? "");
    sheet
        .getRangeByIndex(row, col++)
        .setText(adhesion.claimantTwo!.contact ?? "");
    sheet
        .getRangeByIndex(row, col++)
        .setText(adhesion.claimantTwo!.isGovernmentEmployee.toString() ?? "");

    sheet.getRangeByIndex(row, col++).setText(adhesion.uuid ?? "");

    sheet.getRangeByIndex(row, col++).setText(adhesion.actor ?? "");
  }

  final List<int> bytes = workbook.saveAsStream();
  // File file = await File('AddingTextNumberDateTime.xlsx').writeAsBytes(bytes);
  workbook.dispose();

  return bytes;
}
