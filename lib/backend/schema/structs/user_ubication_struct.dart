// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserUbicationStruct extends FFFirebaseStruct {
  UserUbicationStruct({
    String? countryOfResidence,
    String? cityOfResidence,
    String? stateOfResidence,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _countryOfResidence = countryOfResidence,
        _cityOfResidence = cityOfResidence,
        _stateOfResidence = stateOfResidence,
        super(firestoreUtilData);

  // "countryOfResidence" field.
  String? _countryOfResidence;
  String get countryOfResidence => _countryOfResidence ?? '';
  set countryOfResidence(String? val) => _countryOfResidence = val;
  bool hasCountryOfResidence() => _countryOfResidence != null;

  // "cityOfResidence" field.
  String? _cityOfResidence;
  String get cityOfResidence => _cityOfResidence ?? '';
  set cityOfResidence(String? val) => _cityOfResidence = val;
  bool hasCityOfResidence() => _cityOfResidence != null;

  // "stateOfResidence" field.
  String? _stateOfResidence;
  String get stateOfResidence => _stateOfResidence ?? '';
  set stateOfResidence(String? val) => _stateOfResidence = val;
  bool hasStateOfResidence() => _stateOfResidence != null;

  static UserUbicationStruct fromMap(Map<String, dynamic> data) =>
      UserUbicationStruct(
        countryOfResidence: data['countryOfResidence'] as String?,
        cityOfResidence: data['cityOfResidence'] as String?,
        stateOfResidence: data['stateOfResidence'] as String?,
      );

  static UserUbicationStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? UserUbicationStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'countryOfResidence': _countryOfResidence,
        'cityOfResidence': _cityOfResidence,
        'stateOfResidence': _stateOfResidence,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'countryOfResidence': serializeParam(
          _countryOfResidence,
          ParamType.String,
        ),
        'cityOfResidence': serializeParam(
          _cityOfResidence,
          ParamType.String,
        ),
        'stateOfResidence': serializeParam(
          _stateOfResidence,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserUbicationStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserUbicationStruct(
        countryOfResidence: deserializeParam(
          data['countryOfResidence'],
          ParamType.String,
          false,
        ),
        cityOfResidence: deserializeParam(
          data['cityOfResidence'],
          ParamType.String,
          false,
        ),
        stateOfResidence: deserializeParam(
          data['stateOfResidence'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserUbicationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserUbicationStruct &&
        countryOfResidence == other.countryOfResidence &&
        cityOfResidence == other.cityOfResidence &&
        stateOfResidence == other.stateOfResidence;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([countryOfResidence, cityOfResidence, stateOfResidence]);
}

UserUbicationStruct createUserUbicationStruct({
  String? countryOfResidence,
  String? cityOfResidence,
  String? stateOfResidence,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserUbicationStruct(
      countryOfResidence: countryOfResidence,
      cityOfResidence: cityOfResidence,
      stateOfResidence: stateOfResidence,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserUbicationStruct? updateUserUbicationStruct(
  UserUbicationStruct? userUbication, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userUbication
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserUbicationStructData(
  Map<String, dynamic> firestoreData,
  UserUbicationStruct? userUbication,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userUbication == null) {
    return;
  }
  if (userUbication.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && userUbication.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userUbicationData =
      getUserUbicationFirestoreData(userUbication, forFieldValue);
  final nestedData =
      userUbicationData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = userUbication.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserUbicationFirestoreData(
  UserUbicationStruct? userUbication, [
  bool forFieldValue = false,
]) {
  if (userUbication == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userUbication.toMap());

  // Add any Firestore field values
  userUbication.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserUbicationListFirestoreData(
  List<UserUbicationStruct>? userUbications,
) =>
    userUbications
        ?.map((e) => getUserUbicationFirestoreData(e, true))
        .toList() ??
    [];
