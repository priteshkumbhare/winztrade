import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MacrosRecord extends FirestoreRecord {
  MacrosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "appurl_android" field.
  String? _appurlAndroid;
  String get appurlAndroid => _appurlAndroid ?? '';
  bool hasAppurlAndroid() => _appurlAndroid != null;

  // "appurl_ios" field.
  String? _appurlIos;
  String get appurlIos => _appurlIos ?? '';
  bool hasAppurlIos() => _appurlIos != null;

  // "latest_version" field.
  String? _latestVersion;
  String get latestVersion => _latestVersion ?? '';
  bool hasLatestVersion() => _latestVersion != null;

  // "support_email" field.
  String? _supportEmail;
  String get supportEmail => _supportEmail ?? '';
  bool hasSupportEmail() => _supportEmail != null;

  // "support_phone" field.
  String? _supportPhone;
  String get supportPhone => _supportPhone ?? '';
  bool hasSupportPhone() => _supportPhone != null;

  // "website" field.
  String? _website;
  String get website => _website ?? '';
  bool hasWebsite() => _website != null;

  // "terms_conditions" field.
  String? _termsConditions;
  String get termsConditions => _termsConditions ?? '';
  bool hasTermsConditions() => _termsConditions != null;

  // "privacy_policy" field.
  String? _privacyPolicy;
  String get privacyPolicy => _privacyPolicy ?? '';
  bool hasPrivacyPolicy() => _privacyPolicy != null;

  // "legality" field.
  String? _legality;
  String get legality => _legality ?? '';
  bool hasLegality() => _legality != null;

  void _initializeFields() {
    _appurlAndroid = snapshotData['appurl_android'] as String?;
    _appurlIos = snapshotData['appurl_ios'] as String?;
    _latestVersion = snapshotData['latest_version'] as String?;
    _supportEmail = snapshotData['support_email'] as String?;
    _supportPhone = snapshotData['support_phone'] as String?;
    _website = snapshotData['website'] as String?;
    _termsConditions = snapshotData['terms_conditions'] as String?;
    _privacyPolicy = snapshotData['privacy_policy'] as String?;
    _legality = snapshotData['legality'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('macros');

  static Stream<MacrosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MacrosRecord.fromSnapshot(s));

  static Future<MacrosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MacrosRecord.fromSnapshot(s));

  static MacrosRecord fromSnapshot(DocumentSnapshot snapshot) => MacrosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MacrosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MacrosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MacrosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MacrosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMacrosRecordData({
  String? appurlAndroid,
  String? appurlIos,
  String? latestVersion,
  String? supportEmail,
  String? supportPhone,
  String? website,
  String? termsConditions,
  String? privacyPolicy,
  String? legality,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'appurl_android': appurlAndroid,
      'appurl_ios': appurlIos,
      'latest_version': latestVersion,
      'support_email': supportEmail,
      'support_phone': supportPhone,
      'website': website,
      'terms_conditions': termsConditions,
      'privacy_policy': privacyPolicy,
      'legality': legality,
    }.withoutNulls,
  );

  return firestoreData;
}

class MacrosRecordDocumentEquality implements Equality<MacrosRecord> {
  const MacrosRecordDocumentEquality();

  @override
  bool equals(MacrosRecord? e1, MacrosRecord? e2) {
    return e1?.appurlAndroid == e2?.appurlAndroid &&
        e1?.appurlIos == e2?.appurlIos &&
        e1?.latestVersion == e2?.latestVersion &&
        e1?.supportEmail == e2?.supportEmail &&
        e1?.supportPhone == e2?.supportPhone &&
        e1?.website == e2?.website &&
        e1?.termsConditions == e2?.termsConditions &&
        e1?.privacyPolicy == e2?.privacyPolicy &&
        e1?.legality == e2?.legality;
  }

  @override
  int hash(MacrosRecord? e) => const ListEquality().hash([
        e?.appurlAndroid,
        e?.appurlIos,
        e?.latestVersion,
        e?.supportEmail,
        e?.supportPhone,
        e?.website,
        e?.termsConditions,
        e?.privacyPolicy,
        e?.legality
      ]);

  @override
  bool isValidKey(Object? o) => o is MacrosRecord;
}
