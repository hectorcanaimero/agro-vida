import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JobsRecord extends FirestoreRecord {
  JobsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title_job" field.
  String? _titleJob;
  String get titleJob => _titleJob ?? '';
  bool hasTitleJob() => _titleJob != null;

  // "specialty" field.
  String? _specialty;
  String get specialty => _specialty ?? '';
  bool hasSpecialty() => _specialty != null;

  // "company" field.
  String? _company;
  String get company => _company ?? '';
  bool hasCompany() => _company != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "published" field.
  bool? _published;
  bool get published => _published ?? false;
  bool hasPublished() => _published != null;

  // "created_on" field.
  DateTime? _createdOn;
  DateTime? get createdOn => _createdOn;
  bool hasCreatedOn() => _createdOn != null;

  void _initializeFields() {
    _titleJob = snapshotData['title_job'] as String?;
    _specialty = snapshotData['specialty'] as String?;
    _company = snapshotData['company'] as String?;
    _description = snapshotData['description'] as String?;
    _email = snapshotData['email'] as String?;
    _phone = snapshotData['phone'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _published = snapshotData['published'] as bool?;
    _createdOn = snapshotData['created_on'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('jobs');

  static Stream<JobsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JobsRecord.fromSnapshot(s));

  static Future<JobsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JobsRecord.fromSnapshot(s));

  static JobsRecord fromSnapshot(DocumentSnapshot snapshot) => JobsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JobsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JobsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JobsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JobsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJobsRecordData({
  String? titleJob,
  String? specialty,
  String? company,
  String? description,
  String? email,
  String? phone,
  DocumentReference? user,
  bool? published,
  DateTime? createdOn,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title_job': titleJob,
      'specialty': specialty,
      'company': company,
      'description': description,
      'email': email,
      'phone': phone,
      'user': user,
      'published': published,
      'created_on': createdOn,
    }.withoutNulls,
  );

  return firestoreData;
}

class JobsRecordDocumentEquality implements Equality<JobsRecord> {
  const JobsRecordDocumentEquality();

  @override
  bool equals(JobsRecord? e1, JobsRecord? e2) {
    return e1?.titleJob == e2?.titleJob &&
        e1?.specialty == e2?.specialty &&
        e1?.company == e2?.company &&
        e1?.description == e2?.description &&
        e1?.email == e2?.email &&
        e1?.phone == e2?.phone &&
        e1?.user == e2?.user &&
        e1?.published == e2?.published &&
        e1?.createdOn == e2?.createdOn;
  }

  @override
  int hash(JobsRecord? e) => const ListEquality().hash([
        e?.titleJob,
        e?.specialty,
        e?.company,
        e?.description,
        e?.email,
        e?.phone,
        e?.user,
        e?.published,
        e?.createdOn
      ]);

  @override
  bool isValidKey(Object? o) => o is JobsRecord;
}
