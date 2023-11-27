import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AsignaturaRecord extends FirestoreRecord {
  AsignaturaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "active" field.
  bool? _active;
  bool get active => _active ?? false;
  bool hasActive() => _active != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "update_at" field.
  DateTime? _updateAt;
  DateTime? get updateAt => _updateAt;
  bool hasUpdateAt() => _updateAt != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "data_asignatura" field.
  String? _dataAsignatura;
  String get dataAsignatura => _dataAsignatura ?? '';
  bool hasDataAsignatura() => _dataAsignatura != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _active = snapshotData['active'] as bool?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _updateAt = snapshotData['update_at'] as DateTime?;
    _type = snapshotData['type'] as String?;
    _dataAsignatura = snapshotData['data_asignatura'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Asignatura');

  static Stream<AsignaturaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AsignaturaRecord.fromSnapshot(s));

  static Future<AsignaturaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AsignaturaRecord.fromSnapshot(s));

  static AsignaturaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AsignaturaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AsignaturaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AsignaturaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AsignaturaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AsignaturaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAsignaturaRecordData({
  DocumentReference? user,
  bool? active,
  DateTime? createdAt,
  DateTime? updateAt,
  String? type,
  String? dataAsignatura,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'active': active,
      'created_at': createdAt,
      'update_at': updateAt,
      'type': type,
      'data_asignatura': dataAsignatura,
    }.withoutNulls,
  );

  return firestoreData;
}

class AsignaturaRecordDocumentEquality implements Equality<AsignaturaRecord> {
  const AsignaturaRecordDocumentEquality();

  @override
  bool equals(AsignaturaRecord? e1, AsignaturaRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.active == e2?.active &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updateAt == e2?.updateAt &&
        e1?.type == e2?.type &&
        e1?.dataAsignatura == e2?.dataAsignatura;
  }

  @override
  int hash(AsignaturaRecord? e) => const ListEquality().hash([
        e?.user,
        e?.active,
        e?.createdAt,
        e?.updateAt,
        e?.type,
        e?.dataAsignatura
      ]);

  @override
  bool isValidKey(Object? o) => o is AsignaturaRecord;
}
