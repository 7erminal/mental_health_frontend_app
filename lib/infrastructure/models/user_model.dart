
class UserModel {
  String? userId;
  String? userType;
  String? fullName;
  String? maritalStatus;
  String? dob;
  String? gender;
  String? digitalAddress;
  String? phoneNumber;
  String? email;
  String? idType;
  String? idNumber;
  String? active;
  bool? isVerified;
  String? dateCreated;

  // constructor
  UserModel({
    this.userId,
    this.userType,
    this.fullName,
    this.maritalStatus,
    this.dob,
    this.gender,
    this.digitalAddress,
    this.phoneNumber,
    this.email,
    this.idType,
    this.idNumber,
    this.active,
    this.isVerified,
    this.dateCreated,
  });

  // from json
  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    userId: json["UserId"].toString(),
    userType: json["UserType"].toString(),
    fullName: json["FullName"].toString(),
    maritalStatus: json["MaritalStatus"].toString(),
    dob: json["Dob"].toString(),
    gender: json["Gender"].toString(),
    digitalAddress: json["Address"].toString(),
    phoneNumber: json["PhoneNumber"].toString(),
    email: json["Email"].toString(),
    idType: json["IdType"].toString(),
    idNumber: json["IdNumber"].toString(),
    active: json["Active"].toString(),
    isVerified: json["IsVerified"],
    dateCreated: json["DateCreated"].toString(),
  );

  // from map
  factory UserModel.fromMap(Map<String, dynamic> map) => UserModel(
    userId: map["UserId"].toString(),
    userType: map["UserType"].toString(),
    fullName: map["FullName"].toString(),
    maritalStatus: map["MaritalStatus"].toString(),
    dob: map["Dob"].toString(),
    gender: map["Gender"].toString(),
    digitalAddress: map["Address"].toString(),
    phoneNumber: map["PhoneNumber"].toString(),
    email: map["Email"].toString(),
    idType: map["IdType"].toString(),
    idNumber: map["IdNumber"].toString(),
    active: map["Active"].toString(),
    isVerified: map["IsVerified"],
    dateCreated: map["DateCreated"].toString(),
  );

  // to json
  Map<String, dynamic> toJson() => {
    "userId": userId.toString(),
    "userType": userType.toString(),
    "fullName": fullName.toString(),
    "maritalStatus": maritalStatus.toString(),
    "dob": dob.toString(),
    "gender": gender.toString(),
    "address": digitalAddress.toString(),
    "phoneNumber": phoneNumber.toString(),
    "email": email.toString(),
    "idType": idType.toString(),
    "idNumber": idNumber.toString(),
    "active": active.toString(),
    "isVerified": isVerified,
    "dateCreated": dateCreated.toString(),
  };
}
