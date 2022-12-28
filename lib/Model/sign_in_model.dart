
/// success : true
/// message : "User login successfully!"
/// data : {"user_id":96,"token":"511|tZ3yOu9HhV4ZSfWkr79IESIcn3C9PS1oDzQTRKIv","name":"ui3","email":"ui3@email.com","phone":"5166496161948","refer":null}

class SignInModel {
  SignInModel({
      bool? success, 
      String? message, 
      Data? data,}){
    _success = success;
    _message = message;
    _data = data;
}

  SignInModel.fromJson(dynamic json) {
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
    String? name,
    String? email,
    String? phone,
    dynamic refer,}){
    _userId = userId;
    _token = token;
    _name = name;
    _email = email;
    _phone = phone;
    _refer = refer;
  }

  Data.fromJson(dynamic json) {
    _userId = json['user_id'];
    _token = json['token'];
    _name = json['name'];
    _email = json['email'];
    _phone = json['phone'];
    _refer = json['refer'];
  }
  int? _userId;
  String? _token;
  String? _name;
  String? _email;
  String? _phone;
  dynamic _refer;

  int? get userId => _userId;
  String? get token => _token;
  String? get name => _name;
  String? get email => _email;
  String? get phone => _phone;
  dynamic get refer => _refer;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user_id'] = _userId;
    map['token'] = _token;
    map['name'] = _name;
    map['email'] = _email;
    map['phone'] = _phone;
    map['refer'] = _refer;
    return map;
  }

}