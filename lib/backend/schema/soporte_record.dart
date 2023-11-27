import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SoporteRecord extends FirestoreRecord {
  SoporteRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "created_on" field.
  DateTime? _createdOn;
  DateTime? get createdOn => _createdOn;
  bool hasCreatedOn() => _createdOn != null;

  // "read_user" field.
  bool? _readUser;
  bool get readUser => _readUser ?? false;
  bool hasReadUser() => _readUser != null;

  // "read_customer" field.
  bool? _readCustomer;
  bool get readCustomer => _readCustomer ?? false;
  bool hasReadCustomer() => _readCustomer != null;

  // "type" field.
  int? _type;
  int get type => _type ?? 0;
  bool hasType() => _type != null;

  // "image" field.
  bool? _image;
  bool get image => _image ?? false;
  bool hasImage() => _image != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _message = snapshotData['message'] as String?;
    _createdOn = snapshotData['created_on'] as DateTime?;
    _readUser = snapshotData['read_user'] as bool?;
    _readCustomer = snapshotData['read_customer'] as bool?;
    _type = castToType<int>(snapshotData['type']);
    _image = snapshotData['image'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('soporte')
          : FirebaseFirestore.instance.collectionGroup('soporte');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('soporte').doc();

  static Stream<SoporteRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SoporteRecord.fromSnapshot(s));

  static Future<SoporteRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SoporteRecord.fromSnapshot(s));

  static SoporteRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SoporteRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SoporteRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SoporteRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SoporteRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SoporteRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSoporteRecordData({
  String? message,
  DateTime? createdOn,
  bool? readUser,
  bool? readCustomer,
  int? type,
  bool? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'message': message,
      'created_on': createdOn,
      'read_user': readUser,
      'read_customer': readCustomer,
      'type': type,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class SoporteRecordDocumentEquality implements Equality<SoporteRecord> {
  const SoporteRecordDocumentEquality();

  @override
  bool equals(SoporteRecord? e1, SoporteRecord? e2) {
    return e1?.message == e2?.message &&
        e1?.createdOn == e2?.createdOn &&
        e1?.readUser == e2?.readUser &&
        e1?.readCustomer == e2?.readCustomer &&
        e1?.type == e2?.type &&
        e1?.image == e2?.image;
  }

  @override
  int hash(SoporteRecord? e) => const ListEquality().hash([
        e?.message,
        e?.createdOn,
        e?.readUser,
        e?.readCustomer,
        e?.type,
        e?.image
      ]);

  @override
  bool isValidKey(Object? o) => o is SoporteRecord;
}
