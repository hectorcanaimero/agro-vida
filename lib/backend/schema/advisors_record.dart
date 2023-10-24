import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdvisorsRecord extends FirestoreRecord {
  AdvisorsRecord._(
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

  // "avatar" field.
  String? _avatar;
  String get avatar => _avatar ?? '';
  bool hasAvatar() => _avatar != null;

  // "published" field.
  bool? _published;
  bool get published => _published ?? false;
  bool hasPublished() => _published != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _bio = snapshotData['bio'] as String?;
    _specialty = snapshotData['specialty'] as String?;
    _fullName = snapshotData['fullName'] as String?;
    _email = snapshotData['email'] as String?;
    _phone = snapshotData['phone'] as String?;
    _avatar = snapshotData['avatar'] as String?;
    _published = snapshotData['published'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('advisors');

  static Stream<AdvisorsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AdvisorsRecord.fromSnapshot(s));

  static Future<AdvisorsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AdvisorsRecord.fromSnapshot(s));

  static AdvisorsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AdvisorsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AdvisorsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AdvisorsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AdvisorsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AdvisorsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAdvisorsRecordData({
  DocumentReference? user,
  String? bio,
  String? specialty,
  String? fullName,
  String? email,
  String? phone,
  String? avatar,
  bool? published,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'bio': bio,
      'specialty': specialty,
      'fullName': fullName,
      'email': email,
      'phone': phone,
      'avatar': avatar,
      'published': published,
    }.withoutNulls,
  );

  return firestoreData;
}

class AdvisorsRecordDocumentEquality implements Equality<AdvisorsRecord> {
  const AdvisorsRecordDocumentEquality();

  @override
  bool equals(AdvisorsRecord? e1, AdvisorsRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.bio == e2?.bio &&
        e1?.specialty == e2?.specialty &&
        e1?.fullName == e2?.fullName &&
        e1?.email == e2?.email &&
        e1?.phone == e2?.phone &&
        e1?.avatar == e2?.avatar &&
        e1?.published == e2?.published;
  }

  @override
  int hash(AdvisorsRecord? e) => const ListEquality().hash([
        e?.user,
        e?.bio,
        e?.specialty,
        e?.fullName,
        e?.email,
        e?.phone,
        e?.avatar,
        e?.published
      ]);

  @override
  bool isValidKey(Object? o) => o is AdvisorsRecord;
}
