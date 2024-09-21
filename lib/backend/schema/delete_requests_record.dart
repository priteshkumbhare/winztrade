import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DeleteRequestsRecord extends FirestoreRecord {
  DeleteRequestsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "account_number" field.
  String? _accountNumber;
  String get accountNumber => _accountNumber ?? '';
  bool hasAccountNumber() => _accountNumber != null;

  // "ifsc_code" field.
  String? _ifscCode;
  String get ifscCode => _ifscCode ?? '';
  bool hasIfscCode() => _ifscCode != null;

  void _initializeFields() {
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _accountNumber = snapshotData['account_number'] as String?;
    _ifscCode = snapshotData['ifsc_code'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('delete_requests');

  static Stream<DeleteRequestsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DeleteRequestsRecord.fromSnapshot(s));

  static Future<DeleteRequestsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DeleteRequestsRecord.fromSnapshot(s));

  static DeleteRequestsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DeleteRequestsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DeleteRequestsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DeleteRequestsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DeleteRequestsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DeleteRequestsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDeleteRequestsRecordData({
  DateTime? createdTime,
  String? phoneNumber,
  String? accountNumber,
  String? ifscCode,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'account_number': accountNumber,
      'ifsc_code': ifscCode,
    }.withoutNulls,
  );

  return firestoreData;
}

class DeleteRequestsRecordDocumentEquality
    implements Equality<DeleteRequestsRecord> {
  const DeleteRequestsRecordDocumentEquality();

  @override
  bool equals(DeleteRequestsRecord? e1, DeleteRequestsRecord? e2) {
    return e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.accountNumber == e2?.accountNumber &&
        e1?.ifscCode == e2?.ifscCode;
  }

  @override
  int hash(DeleteRequestsRecord? e) => const ListEquality()
      .hash([e?.createdTime, e?.phoneNumber, e?.accountNumber, e?.ifscCode]);

  @override
  bool isValidKey(Object? o) => o is DeleteRequestsRecord;
}
