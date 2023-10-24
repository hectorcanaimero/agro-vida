import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "ubication" field.
  UserUbicationStruct? _ubication;
  UserUbicationStruct get ubication => _ubication ?? UserUbicationStruct();
  bool hasUbication() => _ubication != null;

  // "profession" field.
  UserProfessionStruct? _profession;
  UserProfessionStruct get profession => _profession ?? UserProfessionStruct();
  bool hasProfession() => _profession != null;

  // "born" field.
  String? _born;
  String get born => _born ?? '';
  bool hasBorn() => _born != null;

  // "type" field.
  int? _type;
  int get type => _type ?? 0;
  bool hasType() => _type != null;

  // "advisor" field.
  bool? _advisor;
  bool get advisor => _advisor ?? false;
  bool hasAdvisor() => _advisor != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _ubication = UserUbicationStruct.maybeFromMap(snapshotData['ubication']);
    _profession = UserProfessionStruct.maybeFromMap(snapshotData['profession']);
    _born = snapshotData['born'] as String?;
    _type = castToType<int>(snapshotData['type']);
    _advisor = snapshotData['advisor'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  UserUbicationStruct? ubication,
  UserProfessionStruct? profession,
  String? born,
  int? type,
  bool? advisor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'ubication': UserUbicationStruct().toMap(),
      'profession': UserProfessionStruct().toMap(),
      'born': born,
      'type': type,
      'advisor': advisor,
    }.withoutNulls,
  );

  // Handle nested data for "ubication" field.
  addUserUbicationStructData(firestoreData, ubication, 'ubication');

  // Handle nested data for "profession" field.
  addUserProfessionStructData(firestoreData, profession, 'profession');

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.ubication == e2?.ubication &&
        e1?.profession == e2?.profession &&
        e1?.born == e2?.born &&
        e1?.type == e2?.type &&
        e1?.advisor == e2?.advisor;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.ubication,
        e?.profession,
        e?.born,
        e?.type,
        e?.advisor
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
