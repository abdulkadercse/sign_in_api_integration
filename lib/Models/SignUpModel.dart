
/// success : true
/// message : "Success."
/// data : {"user_id":19,"token":"42|9Tv7BwXsPQsBhVDVJ6Na5yEmGmiHU97iMZnIlc0r","token_type":"Bearer"}

class SignUpModel {
  SignUpModel({
    bool? success,
    String? message,
    Data? data,}){
    _success = success;
    _message = message;
    _data = data;
  }

  SignUpModel.fromJson(dynamic json) {
    _success = json['success'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _success;
  String? _message;
  Data? _data;
  SignUpModel copyWith({  bool? success,
    String? message,
    Data? data,
  }) => SignUpModel(  success: success ?? _success,
    message: message ?? _message,
    data: data ?? _data,
  );
  bool? get success => _success;
  String? get message => _message;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

class Data {
  Data({
    this.userId,
    this.token,
    this.name,
    this.email,
    this.phone,
    this.refer,});

  Data.fromJson(dynamic json) {
    userId = json['user_id'];
    token = json['token'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    refer = json['refer'];
  }
  int? userId;
  String? token;
  String? name;
  String? email;
  String? phone;
  dynamic refer;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user_id'] = userId;
    map['token'] = token;
    map['name'] = name;
    map['email'] = email;
    map['phone'] = phone;
    map['refer'] = refer;
    return map;
  }

}