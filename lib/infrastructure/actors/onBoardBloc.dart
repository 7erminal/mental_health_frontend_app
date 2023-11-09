import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:medical_application/index.dart';

class OnboardBloc with ChangeNotifier {
  //controllers for signup
  TextEditingController userName = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController idNumberController = TextEditingController();
  TextEditingController confirmIdNumberController = TextEditingController();

  String leadId = '';
  bool error = false;
  File? selfie;
  bool switchValue1 = false;
  bool switchValue2 = false;
  bool checkValue1 = false;
  bool checkValue2 = false;
  bool checkValue3 = false;
  bool checkValue4 = false;
  bool skippedVal = false;
  String errMess = '';
  String successMessage = "";
  dynamic resultMessage;

  /*
  * ###################################################
  * ################ update leadId  ###################
  * ###################################################
  * */
  updateLeadId(String val) {
    leadId = val;
    notifyListeners();
  }

  /*
  * ###################################################
  * ################ monitor password #################
  * ###################################################
  * */
  monitorPassword(String val) {
    checkValue1 = val.length >= 8 ? true : false;
    // checkValue2 = val.containsNumber() ? true : false;
    // checkValue3 = val.containsUpperCase() ? true : false;
    // checkValue4 = val.containsSpecialChar() ? false : true;
    notifyListeners();
  }

  /*
  * ###################################################
  * ################ update id number #################
  * ###################################################
  * */
  updateIdNumber(String val) {
    idNumberController.text = val;
    notifyListeners();
  }

  /*
  * ###################################################
  * ################ update id number #################
  * ###################################################
  * */
  formatIdNumber() {
    // if the id number is not empty
    if (idNumberController.text.isEmpty || idNumberController.text.length <= 3) {
      // add GHA- to the id number on the front
      idNumberController.text = 'GHA-';
      // put the cursor at the end of the text
      idNumberController.moveCursorToEnd();
    }
    notifyListeners();
  }

  /*
  * ###################################################
  * ################ update id number #################
  * ###################################################
  * */
  formatConfirmIdNumber() {
    if (confirmIdNumberController.text.isEmpty || confirmIdNumberController.text.length <= 3) {
      // add GHA- to the id number on the front
      confirmIdNumberController.text = 'GHA-';
      // put the cursor at the end of the text
      confirmIdNumberController.moveCursorToEnd();
    }
    notifyListeners();
  }

  /*
  * ###################################################
  * ############# set selfie image ####################
  * ###################################################
  * */
  setSelfieImage(File file) {
    selfie = file;
    notifyListeners();
  }

  /*
  * ###################################################
  * ############# reset message and error #############
  * ###################################################
  * */
  refresh() {
    successMessage = "";
    errMess = "";
    notifyListeners();
  }

  bool verifySelfie() {
    if (selfie == null) {
      resultMessage = 'No Selfie Image Selected';
      return false;
    } else {
      resultMessage = "";
      return true;
    }
  }

  bool verifyConditions() {
    if (!switchValue1 || !switchValue2) {
      resultMessage = "You must agree to terms and conditions to continue";
      return false;
    } else {
      resultMessage = 'Log in to continue';
      notifyListeners();
      return true;
    }
  }

  toggle(value) {
    value == 'switch1'
        ? switchValue1 = !switchValue1
        : value == 'switch2'
        ? switchValue2 = !switchValue2
        : value == 'check1'
        ? checkValue1 = !checkValue1
        : value == 'check2'
        ? checkValue2 = !checkValue2
        : value == 'check3'
        ? checkValue3 = !checkValue3
        : checkValue4 = !checkValue4;
    notifyListeners();
  }

  /*
  * ###################################################
  * ####### reset boarding ############################
  * ###################################################
  * */
  resetBoarding() {
    userName.text = "";
    phoneController.text = "";
    nameController.text = "";
    dateController.text = "";
    emailController.text = "";
    passwordController.text = "";
    cityController.text = "";
    addressController.text = "";
    idNumberController.text = "";
    confirmIdNumberController.text = "";

    leadId = '';
    error = false;
    selfie;
    switchValue1 = false;
    switchValue2 = false;
    checkValue1 = false;
    checkValue2 = false;
    checkValue3 = false;
    checkValue4 = false;
    skippedVal = false;
    errMess = '';
    successMessage = "";
    selfie = null;
    error = false;
    resultMessage = '';
    notifyListeners();
  }
}
