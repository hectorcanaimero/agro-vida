import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ToolsRecord extends FirestoreRecord {
  ToolsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "published" field.
  bool? _published;
  bool get published => _published ?? false;
  bool hasPublished() => _published != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  bool hasUrl() => _url != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _published = snapshotData['published'] as bool?;
    _url = snapshotData['url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tools');

  static Stream<ToolsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ToolsRecord.fromSnapshot(s));

  static Future<ToolsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ToolsRecord.fromSnapshot(s));

  static ToolsRecord fromSnapshot(DocumentSnapshot snapshot) => ToolsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ToolsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ToolsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ToolsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ToolsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createToolsRecordData({
  String? name,
  bool? published,
  String? url,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'published': published,
      'url': url,
    }.withoutNulls,
  );

  return firestoreData;
}

class ToolsRecordDocumentEquality implements Equality<ToolsRecord> {
  const ToolsRecordDocumentEquality();

  @override
  bool equals(ToolsRecord? e1, ToolsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.published == e2?.published &&
        e1?.url == e2?.url;
  }

  @override
  int hash(ToolsRecord? e) =>
      const ListEquality().hash([e?.name, e?.published, e?.url]);

  @override
  bool isValidKey(Object? o) => o is ToolsRecord;
}
