import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PublicationsRecord extends FirestoreRecord {
  PublicationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "file_upload" field.
  String? _fileUpload;
  String get fileUpload => _fileUpload ?? '';
  bool hasFileUpload() => _fileUpload != null;

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

  // "categories" field.
  List<String>? _categories;
  List<String> get categories => _categories ?? const [];
  bool hasCategories() => _categories != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _fileUpload = snapshotData['file_upload'] as String?;
    _status = snapshotData['status'] as String?;
    _published = snapshotData['published'] as bool?;
    _createdOn = snapshotData['created_on'] as DateTime?;
    _expiresOn = snapshotData['expires_on'] as DateTime?;
    _categories = getDataList(snapshotData['categories']);
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('publications');

  static Stream<PublicationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PublicationsRecord.fromSnapshot(s));

  static Future<PublicationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PublicationsRecord.fromSnapshot(s));

  static PublicationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PublicationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PublicationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PublicationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PublicationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PublicationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPublicationsRecordData({
  String? name,
  String? fileUpload,
  String? status,
  bool? published,
  DateTime? createdOn,
  DateTime? expiresOn,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'file_upload': fileUpload,
      'status': status,
      'published': published,
      'created_on': createdOn,
      'expires_on': expiresOn,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class PublicationsRecordDocumentEquality
    implements Equality<PublicationsRecord> {
  const PublicationsRecordDocumentEquality();

  @override
  bool equals(PublicationsRecord? e1, PublicationsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.fileUpload == e2?.fileUpload &&
        e1?.status == e2?.status &&
        e1?.published == e2?.published &&
        e1?.createdOn == e2?.createdOn &&
        e1?.expiresOn == e2?.expiresOn &&
        listEquality.equals(e1?.categories, e2?.categories) &&
        e1?.image == e2?.image;
  }

  @override
  int hash(PublicationsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.fileUpload,
        e?.status,
        e?.published,
        e?.createdOn,
        e?.expiresOn,
        e?.categories,
        e?.image
      ]);

  @override
  bool isValidKey(Object? o) => o is PublicationsRecord;
}
