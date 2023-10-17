import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AsesorTecnicoRecord extends FirestoreRecord {
  AsesorTecnicoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "specialty" field.
  String? _specialty;
  String get specialty => _specialty ?? '';
  bool hasSpecialty() => _specialty != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  // "position" field.
  int? _position;
  int get position => _position ?? 0;
  bool hasPosition() => _position != null;

  // "fullName" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  bool hasFullName() => _fullName != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "profile" field.
  String? _profile;
  String get profile => _profile ?? '';
  bool hasProfile() => _profile != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _bio = snapshotData['bio'] as String?;
    _specialty = snapshotData['specialty'] as String?;
    _status = snapshotData['status'] as bool?;
    _position = castToType<int>(snapshotData['position']);
    _fullName = snapshotData['fullName'] as String?;
    _email = snapshotData['email'] as String?;
    _phone = snapshotData['phone'] as String?;
    _profile = snapshotData['profile'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('asesor_tecnico');

  static Stream<AsesorTecnicoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AsesorTecnicoRecord.fromSnapshot(s));

  static Future<AsesorTecnicoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AsesorTecnicoRecord.fromSnapshot(s));

  static AsesorTecnicoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AsesorTecnicoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AsesorTecnicoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AsesorTecnicoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AsesorTecnicoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AsesorTecnicoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAsesorTecnicoRecordData({
  DocumentReference? user,
  String? bio,
  String? specialty,
  bool? status,
  int? position,
  String? fullName,
  String? email,
  String? phone,
  String? profile,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'bio': bio,
      'specialty': specialty,
      'status': status,
      'position': position,
      'fullName': fullName,
      'email': email,
      'phone': phone,
      'profile': profile,
    }.withoutNulls,
  );

  return firestoreData;
}

class AsesorTecnicoRecordDocumentEquality
    implements Equality<AsesorTecnicoRecord> {
  const AsesorTecnicoRecordDocumentEquality();

  @override
  bool equals(AsesorTecnicoRecord? e1, AsesorTecnicoRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.bio == e2?.bio &&
        e1?.specialty == e2?.specialty &&
        e1?.status == e2?.status &&
        e1?.position == e2?.position &&
        e1?.fullName == e2?.fullName &&
        e1?.email == e2?.email &&
        e1?.phone == e2?.phone &&
        e1?.profile == e2?.profile;
  }

  @override
  int hash(AsesorTecnicoRecord? e) => const ListEquality().hash([
        e?.user,
        e?.bio,
        e?.specialty,
        e?.status,
        e?.position,
        e?.fullName,
        e?.email,
        e?.phone,
        e?.profile
      ]);

  @override
  bool isValidKey(Object? o) => o is AsesorTecnicoRecord;
}
