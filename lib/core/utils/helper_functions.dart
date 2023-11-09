import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:medical_application/index.dart';

class HelperFunctions {
  /*
  * ###########################################################
  * ##### Validate credentials ###
  * ###########################################################
  * */
  static Future<dynamic> validateCredentials({
    String? email,
    String? password,
  }) async {
    try {
      var response = ApisCaller.instance.postData(
          path: ApisPaths.validateCredentialsUrl,
          body: {"Email": email, "Password": password},
          builder: (data) {
            return data;
          });
      return response;
    } catch (e) {
      return null;
    }
  }

  /*
  * ###########################################################
  * ##### Sign up ###
  * ###########################################################
  * */
  static Future<dynamic> signUp({
    String? name,
    String? password,
    String? email,
  }) async {
    try {
      var response = ApisCaller.instance.postData(
          path: ApisPaths.signUpUrl,
          body: {"Name": name, "Password": password, "Email": email},
          builder: (data) {
            return data;
          });
      return response;
    } catch (e) {
      return null;
    }
  }

  // PUT CUSTOMER SUBSCRIPTION
  static Future<dynamic> updateCustomerInformation({
    required String userid,
    required String firstname,
    required String lastname,
    required String phonenumber,
    required String dob,
    required String gender,
    required String address,
    required String maritalstatus,
  }) async {
    try {
      debugPrint("Sending gender: $gender");
      dynamic resp = await ApisCaller.instance.putData(
          path: ApisPaths.updateUsersUrl(userId: userid),
          body: {
            "FullName": firstname+" "+lastname,
            "PhoneNumber": phonenumber,
            "Dob": dob,
            "Gender": gender,
            "Address": address,
            "MaritalStatus": maritalstatus,
          },
          builder: (data) {
            debugPrint('data $data');
            return data;
          });
      return resp;
    } catch (e) {
      return null;
    }
  }

  /*
  * #####################################
  * ####### NUMBER EXISTS ###############
  * #####################################
  * */
  // static Future<dynamic> getLeadsNumberExist({
  //   required String mobileNumber,
  // }) async {
  //   try {
  //     dynamic resp = await ApisCaller.instance.getData(
  //         path: ApisPaths.leadsMobileNumberExists(mobileNumber: mobileNumber),
  //         builder: (data) {
  //           // debugPrint("Data returned is ");
  //           debugPrint('data $data');
  //
  //           return data;
  //         });
  //     return resp;
  //   } catch (e) {
  //     return null;
  //   }
  // }
}