import 'package:flutter/material.dart';
import 'package:medical_application/index.dart';

class UserBloc with ChangeNotifier {
  // CustomerSubscriptionModel customerSubscriptionModel = CustomerSubscriptionModel();
  UserModel userModel = UserModel();
  String? phoneNumber;
  dynamic temporaryData;
  // List<BankStatementModel> miniStatements = [];
  // List<BankStatementModel> fullStatements = [];
  // List<FavoritesModel> favorites = [];
  String currentFavorite = "";
  List contacts_ = [];
  String errMess = "";
  String leadId = '';
  bool isSubscribed = true;
  TextEditingController pinCode = TextEditingController();
  TextEditingController userEmail = TextEditingController();
  bool isNiaFailed = false;
  bool isNiaSkipped = false;
  bool isNiaPending = false;

  // set current favorite
  setCurrentFavoriteCustomer(String fav){
    currentFavorite = fav;
    notifyListeners();
  }

  // clear favorite
  clearCurrentFavoriteCustomer(){
    currentFavorite = "";
  }

  // update contacts
  updateContacts(dynamic json){
    contacts_.clear();

    contacts_ = json;

    notifyListeners();
  }

  // update favorites
  updateFavorites(dynamic json) {
    // first clear the list
    // favorites.clear();
    // check if the json is a list
    if (json is List) {
      // debugPrint("the list $json");
      for (var element in json.reversed) {
        // debugPrint("element $element");
        // favorites.add(FavoritesModel.fromJson(element));
      }
    } else {
      // debugPrint("the list in the else statement $json");
      // favorites.add(FavoritesModel.fromJson(json));
    }
    notifyListeners();
  }

  // update mini statement from json
  updateMiniStatementFromJson(dynamic json) {
    // miniStatements.clear();
    // check if the json is a list
    if (json is List) {
      // debugPrint("the list $json");
      for (var element in json) {
        // debugPrint("element $element");
        // miniStatements.add(BankStatementModel.fromJson(element));
      }
    } else {
      // debugPrint("the list in the else statement $json");
      // miniStatements.add(BankStatementModel.fromJson(json));
    }
    notifyListeners();
  }

  // update the full statement from json
  updateFullStatementFromJson(dynamic json) {
    // first clear the list
    // fullStatements.clear();
    // check if the json is a list
    if (json is List) {
      // debugPrint("the list $json");
      for (var element in json) {
        // debugPrint("element $element");
        // fullStatements.add(BankStatementModel.fromJson(element));
      }
    } else {
      // debugPrint("the list in the else statement $json");
      // fullStatements.add(BankStatementModel.fromJson(json));
    }
    notifyListeners();
  }

  // update mini statements
  // updateMiniStatements(BankStatementModel newMiniStatements) {
  //   miniStatements.add(newMiniStatements);
  //   notifyListeners();
  // }

  // // update full statements
  // updateFullStatements(BankStatementModel newFullStatements) {
  //   fullStatements.add(newFullStatements);
  //   notifyListeners();
  // }

  updatePhoneNumber(String phoneNumber) {
    this.phoneNumber = phoneNumber;
    notifyListeners();
  }

  /*
  * ###################################################
  * ######### update customer points ##################
  * ###################################################
  * */
  updateUser(Map<String, dynamic> json) {
    userModel = UserModel.fromJson(json);
    notifyListeners();
  }

  // change user kyc to true
  changeIsNiaSkippedToTrue() {
    isNiaSkipped = true;
    notifyListeners();
  }

  // change user kyc to false
  changeIsNiaSkippedToFalse() {
    isNiaSkipped = false;
    notifyListeners();
  }

  // change nia pending to true
  changeNiaPendingToTrue() {
    isNiaPending = true;
    notifyListeners();
  }

  // change nia pending to false
  changeNiaPendingToFalse() {
    isNiaPending = false;
    notifyListeners();
  }

  // change user nia to true
  changeIsNiaFailedToTrue() {
    isNiaFailed = true;
    notifyListeners();
  }

  // change user nia to false
  changeIsNiaFailedToFalse() {
    isNiaFailed = false;
    notifyListeners();
  }

  // update user lead id
  updateLeadId(String newLeadId) {
    leadId = newLeadId;
    notifyListeners();
  }

  // update customer subscription
  // updateCustomerSubscription(dynamic newCustomerSubscription) {
  //   customerSubscriptionModel = CustomerSubscriptionModel.fromJson(newCustomerSubscription);
  //   notifyListeners();
  // }

  // update error message
  updateErrMess(String newErrMess) {
    errMess = newErrMess;
    notifyListeners();
  }

  // update temporary data
  updateTemporaryData(dynamic data) {
    temporaryData = data;
  }

  // reset user bloc
  resetUserBloc() {
    // customerSubscriptionModel = CustomerSubscriptionModel();
    userModel = UserModel();
    phoneNumber = null;
    temporaryData = null;
    // miniStatements.clear();
    // fullStatements.clear();
    errMess = "";
    leadId = '';
    isSubscribed = true;
    pinCode = TextEditingController();
    userEmail = TextEditingController();
    isNiaFailed = false;
    isNiaSkipped = false;
    isNiaPending = false;
    notifyListeners();
  }
}
