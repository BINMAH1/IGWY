import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PropertiesRecord extends FirestoreRecord {
  PropertiesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "mainImage" field.
  String? _mainImage;
  String get mainImage => _mainImage ?? '';
  bool hasMainImage() => _mainImage != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "ratingSummary" field.
  double? _ratingSummary;
  double get ratingSummary => _ratingSummary ?? 0.0;
  bool hasRatingSummary() => _ratingSummary != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  bool hasNotes() => _notes != null;

  // "lastUpdated" field.
  DateTime? _lastUpdated;
  DateTime? get lastUpdated => _lastUpdated;
  bool hasLastUpdated() => _lastUpdated != null;

  // "Business_name" field.
  String? _businessName;
  String get businessName => _businessName ?? '';
  bool hasBusinessName() => _businessName != null;

  // "Business_Desc" field.
  String? _businessDesc;
  String get businessDesc => _businessDesc ?? '';
  bool hasBusinessDesc() => _businessDesc != null;

  // "Business_Location" field.
  LatLng? _businessLocation;
  LatLng? get businessLocation => _businessLocation;
  bool hasBusinessLocation() => _businessLocation != null;

  // "City" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "AskingPrice" field.
  int? _askingPrice;
  int get askingPrice => _askingPrice ?? 0;
  bool hasAskingPrice() => _askingPrice != null;

  // "CashFlow" field.
  int? _cashFlow;
  int get cashFlow => _cashFlow ?? 0;
  bool hasCashFlow() => _cashFlow != null;

  // "Licences" field.
  int? _licences;
  int get licences => _licences ?? 0;
  bool hasLicences() => _licences != null;

  // "Website" field.
  String? _website;
  String get website => _website ?? '';
  bool hasWebsite() => _website != null;

  // "IsApproved" field.
  bool? _isApproved;
  bool get isApproved => _isApproved ?? false;
  bool hasIsApproved() => _isApproved != null;

  void _initializeFields() {
    _mainImage = snapshotData['mainImage'] as String?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _ratingSummary = castToType<double>(snapshotData['ratingSummary']);
    _price = castToType<int>(snapshotData['price']);
    _notes = snapshotData['notes'] as String?;
    _lastUpdated = snapshotData['lastUpdated'] as DateTime?;
    _businessName = snapshotData['Business_name'] as String?;
    _businessDesc = snapshotData['Business_Desc'] as String?;
    _businessLocation = snapshotData['Business_Location'] as LatLng?;
    _city = snapshotData['City'] as String?;
    _askingPrice = castToType<int>(snapshotData['AskingPrice']);
    _cashFlow = castToType<int>(snapshotData['CashFlow']);
    _licences = castToType<int>(snapshotData['Licences']);
    _website = snapshotData['Website'] as String?;
    _isApproved = snapshotData['IsApproved'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('properties');

  static Stream<PropertiesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PropertiesRecord.fromSnapshot(s));

  static Future<PropertiesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PropertiesRecord.fromSnapshot(s));

  static PropertiesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PropertiesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PropertiesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PropertiesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PropertiesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PropertiesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPropertiesRecordData({
  String? mainImage,
  DocumentReference? userRef,
  double? ratingSummary,
  int? price,
  String? notes,
  DateTime? lastUpdated,
  String? businessName,
  String? businessDesc,
  LatLng? businessLocation,
  String? city,
  int? askingPrice,
  int? cashFlow,
  int? licences,
  String? website,
  bool? isApproved,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'mainImage': mainImage,
      'userRef': userRef,
      'ratingSummary': ratingSummary,
      'price': price,
      'notes': notes,
      'lastUpdated': lastUpdated,
      'Business_name': businessName,
      'Business_Desc': businessDesc,
      'Business_Location': businessLocation,
      'City': city,
      'AskingPrice': askingPrice,
      'CashFlow': cashFlow,
      'Licences': licences,
      'Website': website,
      'IsApproved': isApproved,
    }.withoutNulls,
  );

  return firestoreData;
}

class PropertiesRecordDocumentEquality implements Equality<PropertiesRecord> {
  const PropertiesRecordDocumentEquality();

  @override
  bool equals(PropertiesRecord? e1, PropertiesRecord? e2) {
    return e1?.mainImage == e2?.mainImage &&
        e1?.userRef == e2?.userRef &&
        e1?.ratingSummary == e2?.ratingSummary &&
        e1?.price == e2?.price &&
        e1?.notes == e2?.notes &&
        e1?.lastUpdated == e2?.lastUpdated &&
        e1?.businessName == e2?.businessName &&
        e1?.businessDesc == e2?.businessDesc &&
        e1?.businessLocation == e2?.businessLocation &&
        e1?.city == e2?.city &&
        e1?.askingPrice == e2?.askingPrice &&
        e1?.cashFlow == e2?.cashFlow &&
        e1?.licences == e2?.licences &&
        e1?.website == e2?.website &&
        e1?.isApproved == e2?.isApproved;
  }

  @override
  int hash(PropertiesRecord? e) => const ListEquality().hash([
        e?.mainImage,
        e?.userRef,
        e?.ratingSummary,
        e?.price,
        e?.notes,
        e?.lastUpdated,
        e?.businessName,
        e?.businessDesc,
        e?.businessLocation,
        e?.city,
        e?.askingPrice,
        e?.cashFlow,
        e?.licences,
        e?.website,
        e?.isApproved
      ]);

  @override
  bool isValidKey(Object? o) => o is PropertiesRecord;
}
