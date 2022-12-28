
/// success : true
/// message : "Success."
/// data : {"user_id":96,"token":"510|eqKI8Cl8MNag1zuvdVJHKkXWasCSLsCfSGga3RYk","token_type":"Bearer"}

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
    int? userId,
    String? token,
    String? tokenType,}){
    _userId = userId;
    _token = token;
    _tokenType = tokenType;
  }

  Data.fromJson(dynamic json) {
    _userId = json['user_id'];
    _token = json['token'];
    _tokenType = json['token_type'];
  }
  int? _userId;
  String? _token;
  String? _tokenType;

  int? get userId => _userId;
  String? get token => _token;
  String? get tokenType => _tokenType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user_id'] = _userId;
    map['token'] = _token;
    map['token_type'] = _tokenType;
    return map;
  }

}