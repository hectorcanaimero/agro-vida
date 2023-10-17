// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LinkedWorkStruct extends FFFirebaseStruct {
  LinkedWorkStruct({
    List<String>? name,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        super(firestoreUtilData);

  // "name" field.
  List<String>? _name;
  List<String> get name => _name ?? const [];
  set name(List<String>? val) => _name = val;
  void updateName(Function(List<String>) updateFn) => updateFn(_name ??= []);
  bool hasName() => _name != null;

  static LinkedWorkStruct fromMap(Map<String, dynamic> data) =>
      LinkedWorkStruct(
        name: getDataList(data['name']),
      );

  static LinkedWorkStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? LinkedWorkStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
          true,
        ),
      }.withoutNulls;

  static LinkedWorkStruct fromSerializableMap(Map<String, dynamic> data) =>
      LinkedWorkStruct(
        name: deserializeParam<String>(
          data['name'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'LinkedWorkStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is LinkedWorkStruct && listEquality.equals(name, other.name);
  }

  @override
  int get hashCode => const ListEquality().hash([name]);
}

LinkedWorkStruct createLinkedWorkStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LinkedWorkStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LinkedWorkStruct? updateLinkedWorkStruct(
  LinkedWorkStruct? linkedWork, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    linkedWork
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLinkedWorkStructData(
  Map<String, dynamic> firestoreData,
  LinkedWorkStruct? linkedWork,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (linkedWork == null) {
    return;
  }
  if (linkedWork.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && linkedWork.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final linkedWorkData = getLinkedWorkFirestoreData(linkedWork, forFieldValue);
  final nestedData = linkedWorkData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = linkedWork.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLinkedWorkFirestoreData(
  LinkedWorkStruct? linkedWork, [
  bool forFieldValue = false,
]) {
  if (linkedWork == null) {
    return {};
  }
  final firestoreData = mapToFirestore(linkedWork.toMap());

  // Add any Firestore field values
  linkedWork.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLinkedWorkListFirestoreData(
  List<LinkedWorkStruct>? linkedWorks,
) =>
    linkedWorks?.map((e) => getLinkedWorkFirestoreData(e, true)).toList() ?? [];
