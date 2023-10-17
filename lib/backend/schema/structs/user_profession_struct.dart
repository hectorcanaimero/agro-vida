// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserProfessionStruct extends FFFirebaseStruct {
  UserProfessionStruct({
    bool? working,
    String? responsability,
    String? company,
    LinkedWorkStruct? linkedWork,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _working = working,
        _responsability = responsability,
        _company = company,
        _linkedWork = linkedWork,
        super(firestoreUtilData);

  // "working" field.
  bool? _working;
  bool get working => _working ?? false;
  set working(bool? val) => _working = val;
  bool hasWorking() => _working != null;

  // "responsability" field.
  String? _responsability;
  String get responsability => _responsability ?? '';
  set responsability(String? val) => _responsability = val;
  bool hasResponsability() => _responsability != null;

  // "company" field.
  String? _company;
  String get company => _company ?? '';
  set company(String? val) => _company = val;
  bool hasCompany() => _company != null;

  // "linked_work" field.
  LinkedWorkStruct? _linkedWork;
  LinkedWorkStruct get linkedWork => _linkedWork ?? LinkedWorkStruct();
  set linkedWork(LinkedWorkStruct? val) => _linkedWork = val;
  void updateLinkedWork(Function(LinkedWorkStruct) updateFn) =>
      updateFn(_linkedWork ??= LinkedWorkStruct());
  bool hasLinkedWork() => _linkedWork != null;

  static UserProfessionStruct fromMap(Map<String, dynamic> data) =>
      UserProfessionStruct(
        working: data['working'] as bool?,
        responsability: data['responsability'] as String?,
        company: data['company'] as String?,
        linkedWork: LinkedWorkStruct.maybeFromMap(data['linked_work']),
      );

  static UserProfessionStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? UserProfessionStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'working': _working,
        'responsability': _responsability,
        'company': _company,
        'linked_work': _linkedWork?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'working': serializeParam(
          _working,
          ParamType.bool,
        ),
        'responsability': serializeParam(
          _responsability,
          ParamType.String,
        ),
        'company': serializeParam(
          _company,
          ParamType.String,
        ),
        'linked_work': serializeParam(
          _linkedWork,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static UserProfessionStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserProfessionStruct(
        working: deserializeParam(
          data['working'],
          ParamType.bool,
          false,
        ),
        responsability: deserializeParam(
          data['responsability'],
          ParamType.String,
          false,
        ),
        company: deserializeParam(
          data['company'],
          ParamType.String,
          false,
        ),
        linkedWork: deserializeStructParam(
          data['linked_work'],
          ParamType.DataStruct,
          false,
          structBuilder: LinkedWorkStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'UserProfessionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserProfessionStruct &&
        working == other.working &&
        responsability == other.responsability &&
        company == other.company &&
        linkedWork == other.linkedWork;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([working, responsability, company, linkedWork]);
}

UserProfessionStruct createUserProfessionStruct({
  bool? working,
  String? responsability,
  String? company,
  LinkedWorkStruct? linkedWork,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserProfessionStruct(
      working: working,
      responsability: responsability,
      company: company,
      linkedWork: linkedWork ?? (clearUnsetFields ? LinkedWorkStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserProfessionStruct? updateUserProfessionStruct(
  UserProfessionStruct? userProfession, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userProfession
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserProfessionStructData(
  Map<String, dynamic> firestoreData,
  UserProfessionStruct? userProfession,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userProfession == null) {
    return;
  }
  if (userProfession.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && userProfession.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userProfessionData =
      getUserProfessionFirestoreData(userProfession, forFieldValue);
  final nestedData =
      userProfessionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = userProfession.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserProfessionFirestoreData(
  UserProfessionStruct? userProfession, [
  bool forFieldValue = false,
]) {
  if (userProfession == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userProfession.toMap());

  // Handle nested data for "linked_work" field.
  addLinkedWorkStructData(
    firestoreData,
    userProfession.hasLinkedWork() ? userProfession.linkedWork : null,
    'linked_work',
    forFieldValue,
  );

  // Add any Firestore field values
  userProfession.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserProfessionListFirestoreData(
  List<UserProfessionStruct>? userProfessions,
) =>
    userProfessions
        ?.map((e) => getUserProfessionFirestoreData(e, true))
        .toList() ??
    [];
