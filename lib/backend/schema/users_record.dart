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

  // "isHost" field.
  bool? _isHost;
  bool get isHost => _isHost ?? false;
  bool hasIsHost() => _isHost != null;

  // "numberProperties" field.
  int? _numberProperties;
  int get numberProperties => _numberProperties ?? 0;
  bool hasNumberProperties() => _numberProperties != null;

  // "numberActiveBookings" field.
  int? _numberActiveBookings;
  int get numberActiveBookings => _numberActiveBookings ?? 0;
  bool hasNumberActiveBookings() => _numberActiveBookings != null;

  // "userFName" field.
  String? _userFName;
  String get userFName => _userFName ?? '';
  bool hasUserFName() => _userFName != null;

  // "userLName" field.
  String? _userLName;
  String get userLName => _userLName ?? '';
  bool hasUserLName() => _userLName != null;

  // "NationalNumber" field.
  String? _nationalNumber;
  String get nationalNumber => _nationalNumber ?? '';
  bool hasNationalNumber() => _nationalNumber != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _isHost = snapshotData['isHost'] as bool?;
    _numberProperties = castToType<int>(snapshotData['numberProperties']);
    _numberActiveBookings =
        castToType<int>(snapshotData['numberActiveBookings']);
    _userFName = snapshotData['userFName'] as String?;
    _userLName = snapshotData['userLName'] as String?;
    _nationalNumber = snapshotData['NationalNumber'] as String?;
    _password = snapshotData['password'] as String?;
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
  bool? isHost,
  int? numberProperties,
  int? numberActiveBookings,
  String? userFName,
  String? userLName,
  String? nationalNumber,
  String? password,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'isHost': isHost,
      'numberProperties': numberProperties,
      'numberActiveBookings': numberActiveBookings,
      'userFName': userFName,
      'userLName': userLName,
      'NationalNumber': nationalNumber,
      'password': password,
    }.withoutNulls,
  );

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
        e1?.isHost == e2?.isHost &&
        e1?.numberProperties == e2?.numberProperties &&
        e1?.numberActiveBookings == e2?.numberActiveBookings &&
        e1?.userFName == e2?.userFName &&
        e1?.userLName == e2?.userLName &&
        e1?.nationalNumber == e2?.nationalNumber &&
        e1?.password == e2?.password;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.isHost,
        e?.numberProperties,
        e?.numberActiveBookings,
        e?.userFName,
        e?.userLName,
        e?.nationalNumber,
        e?.password
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
