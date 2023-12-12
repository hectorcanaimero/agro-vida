import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EgresadosRecord extends FirestoreRecord {
  EgresadosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "nacionality" field.
  String? _nacionality;
  String get nacionality => _nacionality ?? '';
  bool hasNacionality() => _nacionality != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "intereses" field.
  String? _intereses;
  String get intereses => _intereses ?? '';
  bool hasIntereses() => _intereses != null;

  // "others" field.
  String? _others;
  String get others => _others ?? '';
  bool hasOthers() => _others != null;

  // "area_laboral" field.
  String? _areaLaboral;
  String get areaLaboral => _areaLaboral ?? '';
  bool hasAreaLaboral() => _areaLaboral != null;

  // "estudios_cuartinivel" field.
  String? _estudiosCuartinivel;
  String get estudiosCuartinivel => _estudiosCuartinivel ?? '';
  bool hasEstudiosCuartinivel() => _estudiosCuartinivel != null;

  // "data_egresado" field.
  String? _dataEgresado;
  String get dataEgresado => _dataEgresado ?? '';
  bool hasDataEgresado() => _dataEgresado != null;

  // "sexo" field.
  String? _sexo;
  String get sexo => _sexo ?? '';
  bool hasSexo() => _sexo != null;

  // "data_nacimiento" field.
  String? _dataNacimiento;
  String get dataNacimiento => _dataNacimiento ?? '';
  bool hasDataNacimiento() => _dataNacimiento != null;

  // "facebook" field.
  String? _facebook;
  String get facebook => _facebook ?? '';
  bool hasFacebook() => _facebook != null;

  // "instagram" field.
  String? _instagram;
  String get instagram => _instagram ?? '';
  bool hasInstagram() => _instagram != null;

  // "twitter" field.
  String? _twitter;
  String get twitter => _twitter ?? '';
  bool hasTwitter() => _twitter != null;

  // "update_time" field.
  DateTime? _updateTime;
  DateTime? get updateTime => _updateTime;
  bool hasUpdateTime() => _updateTime != null;

  // "identificator" field.
  int? _identificator;
  int get identificator => _identificator ?? 0;
  bool hasIdentificator() => _identificator != null;

  // "universidad" field.
  String? _universidad;
  String get universidad => _universidad ?? '';
  bool hasUniversidad() => _universidad != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "school" field.
  int? _school;
  int get school => _school ?? 0;
  bool hasSchool() => _school != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _nacionality = snapshotData['nacionality'] as String?;
    _country = snapshotData['country'] as String?;
    _city = snapshotData['city'] as String?;
    _email = snapshotData['email'] as String?;
    _phone = snapshotData['phone'] as String?;
    _intereses = snapshotData['intereses'] as String?;
    _others = snapshotData['others'] as String?;
    _areaLaboral = snapshotData['area_laboral'] as String?;
    _estudiosCuartinivel = snapshotData['estudios_cuartinivel'] as String?;
    _dataEgresado = snapshotData['data_egresado'] as String?;
    _sexo = snapshotData['sexo'] as String?;
    _dataNacimiento = snapshotData['data_nacimiento'] as String?;
    _facebook = snapshotData['facebook'] as String?;
    _instagram = snapshotData['instagram'] as String?;
    _twitter = snapshotData['twitter'] as String?;
    _updateTime = snapshotData['update_time'] as DateTime?;
    _identificator = castToType<int>(snapshotData['identificator']);
    _universidad = snapshotData['universidad'] as String?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _school = castToType<int>(snapshotData['school']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('egresados');

  static Stream<EgresadosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EgresadosRecord.fromSnapshot(s));

  static Future<EgresadosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EgresadosRecord.fromSnapshot(s));

  static EgresadosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EgresadosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EgresadosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EgresadosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EgresadosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EgresadosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEgresadosRecordData({
  String? name,
  String? nacionality,
  String? country,
  String? city,
  String? email,
  String? phone,
  String? intereses,
  String? others,
  String? areaLaboral,
  String? estudiosCuartinivel,
  String? dataEgresado,
  String? sexo,
  String? dataNacimiento,
  String? facebook,
  String? instagram,
  String? twitter,
  DateTime? updateTime,
  int? identificator,
  String? universidad,
  DocumentReference? userRef,
  int? school,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'nacionality': nacionality,
      'country': country,
      'city': city,
      'email': email,
      'phone': phone,
      'intereses': intereses,
      'others': others,
      'area_laboral': areaLaboral,
      'estudios_cuartinivel': estudiosCuartinivel,
      'data_egresado': dataEgresado,
      'sexo': sexo,
      'data_nacimiento': dataNacimiento,
      'facebook': facebook,
      'instagram': instagram,
      'twitter': twitter,
      'update_time': updateTime,
      'identificator': identificator,
      'universidad': universidad,
      'userRef': userRef,
      'school': school,
    }.withoutNulls,
  );

  return firestoreData;
}

class EgresadosRecordDocumentEquality implements Equality<EgresadosRecord> {
  const EgresadosRecordDocumentEquality();

  @override
  bool equals(EgresadosRecord? e1, EgresadosRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.nacionality == e2?.nacionality &&
        e1?.country == e2?.country &&
        e1?.city == e2?.city &&
        e1?.email == e2?.email &&
        e1?.phone == e2?.phone &&
        e1?.intereses == e2?.intereses &&
        e1?.others == e2?.others &&
        e1?.areaLaboral == e2?.areaLaboral &&
        e1?.estudiosCuartinivel == e2?.estudiosCuartinivel &&
        e1?.dataEgresado == e2?.dataEgresado &&
        e1?.sexo == e2?.sexo &&
        e1?.dataNacimiento == e2?.dataNacimiento &&
        e1?.facebook == e2?.facebook &&
        e1?.instagram == e2?.instagram &&
        e1?.twitter == e2?.twitter &&
        e1?.updateTime == e2?.updateTime &&
        e1?.identificator == e2?.identificator &&
        e1?.universidad == e2?.universidad &&
        e1?.userRef == e2?.userRef &&
        e1?.school == e2?.school;
  }

  @override
  int hash(EgresadosRecord? e) => const ListEquality().hash([
        e?.name,
        e?.nacionality,
        e?.country,
        e?.city,
        e?.email,
        e?.phone,
        e?.intereses,
        e?.others,
        e?.areaLaboral,
        e?.estudiosCuartinivel,
        e?.dataEgresado,
        e?.sexo,
        e?.dataNacimiento,
        e?.facebook,
        e?.instagram,
        e?.twitter,
        e?.updateTime,
        e?.identificator,
        e?.universidad,
        e?.userRef,
        e?.school
      ]);

  @override
  bool isValidKey(Object? o) => o is EgresadosRecord;
}
