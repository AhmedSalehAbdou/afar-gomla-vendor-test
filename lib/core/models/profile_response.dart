
import 'base_response.dart';

class ProfileResponse extends BaseResponse {
  ProfileResponse({
    String? key,
    UserData? data,
    String? msg,
    num? code,
  }) : super(key: key, msg: msg, code: code) {
    _key = key;
    _data = data;
    _msg = msg;
    _code = code;
  }

  ProfileResponse.fromJson(dynamic json) {
    _key = json['key'];
    _data = json['data'] != null ? UserData.fromJson(json['data']) : null;
    _msg = json['msg'];
    _code = json['code'];
    _status = (code == 200 && key != 'fail');
  }

  String? _key;
  UserData? _data;
  String? _msg;
  num? _code;
  late bool _status;

  @override
  String? get key => _key;

  UserData? get data => _data;

  @override
  String? get msg => _msg;

  @override
  num? get code => _code;

  @override
  bool get status => _status;
}

class UserData {
  UserData({
    UserBaseInfo? userBaseInfo,
  }) {
    _userBaseInfo = userBaseInfo;
  }

  UserData.fromJson(dynamic json) {
    _userBaseInfo = json['user_base_info'] != null
        ? UserBaseInfo.fromJson(json['user_base_info'])
        : null;
  }

  UserBaseInfo? _userBaseInfo;

  UserBaseInfo? get userBaseInfo => _userBaseInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_userBaseInfo != null) {
      map['user_base_info'] = _userBaseInfo?.toJson();
    }
    return map;
  }
}

class UserBaseInfo {
  UserBaseInfo({
    num? id,
    String? uuid,
    String? promoCode,
    String? name,
    String? phone,
    String? email,
    String? lang,
    String? gender,
    String? birthDate,
    String? avatar,
    String? cityName,
    num? cityId,
    String? status,
    String? completeRegistration,
    String? notificationStatus,
    String? token,
    String? inviteFriendBonusMessage,
    String? inviteFriendBonusAmount,
    String? inviteFriendBonusType,
  }) {
    _id = id;
    _uuid = uuid;
    _promoCode = promoCode;
    _name = name;
    _phone = phone;
    _email = email;
    _lang = lang;
    _gender = gender;
    _birthDate = birthDate;
    _avatar = avatar;
    _cityName = cityName;
    _cityId = cityId;
    _status = status;
    _completeRegistration = completeRegistration;
    _notificationStatus = notificationStatus;
    _token = token;
    _inviteFriendBonusMessage = inviteFriendBonusMessage;
    _inviteFriendBonusAmount = inviteFriendBonusAmount;
    _inviteFriendBonusType = inviteFriendBonusType;
  }

  UserBaseInfo.fromJson(dynamic json) {
    _id = json['id'];
    _uuid = json['uuid'];
    _promoCode = json['promo_code'];
    _name = json['name'];
    _phone = json['phone'];
    _email = json['email'];
    _lang = json['lang'];
    _gender = json['gender'];
    _birthDate = json['birth_date'];
    _avatar = json['avatar'];
    _cityName = json['city_name'];
    _cityId = json['city_id'];
    _status = json['status'];
    _completeRegistration = json['complete_registration'];
    _notificationStatus = json['notification_status'];
    _token = json['token'];
    _inviteFriendBonusMessage = json['invite_friend_bonus_message'];
    _inviteFriendBonusAmount = json['invite_friend_bonus_amount'];
    _inviteFriendBonusType = json['invite_friend_bonus_type'];
    _balance = num.tryParse(json['balance'].toString());
    _points = num.tryParse(json['points'].toString());
    _pointCashValue = num.tryParse(json['point_cash_value'].toString());
  }

  num? _id;
  String? _uuid;
  String? _promoCode;
  String? _name;
  String? _phone;
  String? _email;
  String? _lang;
  String? _gender;
  String? _birthDate;
  String? _avatar;
  String? _cityName;
  num? _cityId;
  String? _status;
  String? _completeRegistration;
  String? _notificationStatus;
  String? _token;
  String? _inviteFriendBonusMessage;
  String? _inviteFriendBonusAmount;
  String? _inviteFriendBonusType;
  num? _balance;
  num? _points;
  num? _pointCashValue;

  num? get id => _id;

  String? get uuid => _uuid;

  String? get promoCode => _promoCode;

  String? get name => _name;

  String? get phone => _phone;

  String? get email => _email;

  String? get lang => _lang;

  String? get gender => _gender;

  String? get birthDate => _birthDate;

  String? get avatar => _avatar;

  String? get cityName => _cityName;

  num? get cityId => _cityId;

  String? get status => _status;

  String? get completeRegistration => _completeRegistration;

  String? get notificationStatus => _notificationStatus;

  String? get token => _token;

  String? get inviteFriendBonusMessage => _inviteFriendBonusMessage;

  String? get inviteFriendBonusAmount => _inviteFriendBonusAmount;

  String? get inviteFriendBonusType => _inviteFriendBonusType;

  num get balance => _balance ?? 0;

  num get points => _points ?? 0;

  num get pointCashValue => _pointCashValue ?? 0;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['uuid'] = _uuid;
    map['promo_code'] = _promoCode;
    map['name'] = _name;
    map['phone'] = _phone;
    map['email'] = _email;
    map['lang'] = _lang;
    map['gender'] = _gender;
    map['birth_date'] = _birthDate;
    map['avatar'] = _avatar;
    map['city_name'] = _cityName;
    map['city_id'] = _cityId;
    map['status'] = _status;
    map['complete_registration'] = _completeRegistration;
    map['notification_status'] = _notificationStatus;
    map['token'] = _token;
    map['invite_friend_bonus_message'] = _inviteFriendBonusMessage;
    map['invite_friend_bonus_amount'] = _inviteFriendBonusAmount;
    map['invite_friend_bonus_type'] = _inviteFriendBonusType;
    map['balance'] = _balance;
    map['points'] = _points;
    map['point_cash_value'] = _pointCashValue;
    return map;
  }
}
