import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BannersRecord extends FirestoreRecord {
  BannersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  bool hasUrl() => _url != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "published" field.
  bool? _published;
  bool get published => _published ?? false;
  bool hasPublished() => _published != null;

  // "created_on" field.
  DateTime? _createdOn;
  DateTime? get createdOn => _createdOn;
  bool hasCreatedOn() => _createdOn != null;

  // "expires_on" field.
  DateTime? _expiresOn;
  DateTime? get expiresOn => _expiresOn;
  bool hasExpiresOn() => _expiresOn != null;

  // "position" field.
  String? _position;
  String get position => _position ?? '';
  bool hasPosition() => _position != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _url = snapshotData['url'] as String?;
    _image = snapshotData['image'] as String?;
    _status = snapshotData['status'] as String?;
    _published = snapshotData['published'] as bool?;
    _createdOn = snapshotData['created_on'] as DateTime?;
    _expiresOn = snapshotData['expires_on'] as DateTime?;
    _position = snapshotData['position'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('banners');

  static Stream<BannersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BannersRecord.fromSnapshot(s));

  static Future<BannersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BannersRecord.fromSnapshot(s));

  static BannersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BannersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BannersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BannersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BannersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BannersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBannersRecordData({
  String? name,
  String? url,
  String? image,
  String? status,
  bool? published,
  DateTime? createdOn,
  DateTime? expiresOn,
  String? position,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'url': url,
      'image': image,
      'status': status,
      'published': published,
      'created_on': createdOn,
      'expires_on': expiresOn,
      'position': position,
    }.withoutNulls,
  );

  return firestoreData;
}

class BannersRecordDocumentEquality implements Equality<BannersRecord> {
  const BannersRecordDocumentEquality();

  @override
  bool equals(BannersRecord? e1, BannersRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.url == e2?.url &&
        e1?.image == e2?.image &&
        e1?.status == e2?.status &&
        e1?.published == e2?.published &&
        e1?.createdOn == e2?.createdOn &&
        e1?.expiresOn == e2?.expiresOn &&
        e1?.position == e2?.position;
  }

  @override
  int hash(BannersRecord? e) => const ListEquality().hash([
        e?.name,
        e?.url,
        e?.image,
        e?.status,
        e?.published,
        e?.createdOn,
        e?.expiresOn,
        e?.position
      ]);

  @override
  bool isValidKey(Object? o) => o is BannersRecord;
}
