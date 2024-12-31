import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
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

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "sponsor_phone" field.
  String? _sponsorPhone;
  String get sponsorPhone => _sponsorPhone ?? '';
  bool hasSponsorPhone() => _sponsorPhone != null;

  // "user_type" field.
  String? _userType;
  String get userType => _userType ?? '';
  bool hasUserType() => _userType != null;

  // "balance" field.
  int? _balance;
  int get balance => _balance ?? 0;
  bool hasBalance() => _balance != null;

  // "token_balance" field.
  int? _tokenBalance;
  int get tokenBalance => _tokenBalance ?? 0;
  bool hasTokenBalance() => _tokenBalance != null;

  // "qr_image" field.
  String? _qrImage;
  String get qrImage => _qrImage ?? '';
  bool hasQrImage() => _qrImage != null;

  // "gov_id" field.
  String? _govId;
  String get govId => _govId ?? '';
  bool hasGovId() => _govId != null;

  // "id_type" field.
  String? _idType;
  String get idType => _idType ?? '';
  bool hasIdType() => _idType != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _state = snapshotData['state'] as String?;
    _bio = snapshotData['bio'] as String?;
    _city = snapshotData['city'] as String?;
    _sponsorPhone = snapshotData['sponsor_phone'] as String?;
    _userType = snapshotData['user_type'] as String?;
    _balance = castToType<int>(snapshotData['balance']);
    _tokenBalance = castToType<int>(snapshotData['token_balance']);
    _qrImage = snapshotData['qr_image'] as String?;
    _govId = snapshotData['gov_id'] as String?;
    _idType = snapshotData['id_type'] as String?;
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
  String? state,
  String? bio,
  String? city,
  String? sponsorPhone,
  String? userType,
  int? balance,
  int? tokenBalance,
  String? qrImage,
  String? govId,
  String? idType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'state': state,
      'bio': bio,
      'city': city,
      'sponsor_phone': sponsorPhone,
      'user_type': userType,
      'balance': balance,
      'token_balance': tokenBalance,
      'qr_image': qrImage,
      'gov_id': govId,
      'id_type': idType,
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
        e1?.state == e2?.state &&
        e1?.bio == e2?.bio &&
        e1?.city == e2?.city &&
        e1?.sponsorPhone == e2?.sponsorPhone &&
        e1?.userType == e2?.userType &&
        e1?.balance == e2?.balance &&
        e1?.tokenBalance == e2?.tokenBalance &&
        e1?.qrImage == e2?.qrImage &&
        e1?.govId == e2?.govId &&
        e1?.idType == e2?.idType;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.state,
        e?.bio,
        e?.city,
        e?.sponsorPhone,
        e?.userType,
        e?.balance,
        e?.tokenBalance,
        e?.qrImage,
        e?.govId,
        e?.idType
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
