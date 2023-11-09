import 'package:flutter/material.dart';
import 'package:medical_application/index.dart';
import 'package:date_field/date_field.dart';
import 'package:provider/provider.dart';

class PersonalForm extends StatefulWidget {
  const PersonalForm({Key? key}) : super(key: key);

  @override
  State<PersonalForm> createState() => _PersonalFormState();
}

class _PersonalFormState extends State<PersonalForm> {
  static final _formKey = GlobalKey<FormState>();

  final surnameController = TextEditingController();
  final firstNameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final dobController = TextEditingController();
  final genderController = TextEditingController();
  final addressController = TextEditingController();
  final maritalStatusController = TextEditingController();

  showGenderSelectDialog(){
    double height = MediaQuery.of(context).size.height;

    showDialog(
        context: context,
        builder: (_) => GenderSelect(linkTap: (){ Navigator.pop(context); }, setGender: (String gender){ setState(() {
          genderController.text = gender;
        }); },)
    );
  }

  showMaritalStatusSelectDialog(){
    double height = MediaQuery.of(context).size.height;

    showDialog(
        context: context,
        builder: (_) => MaritalStatus(linkTap: (){ Navigator.pop(context); }, setMaritalStatus: (String maritalStatus){ debugPrint("Selected item is $maritalStatus"); setState(() {
          maritalStatusController.text = maritalStatus;
        }); },)
    );
  }

  showUpdateCompleteDialog(String message){
    double height = MediaQuery.of(context).size.height;

    showDialog(
        context: context,
        builder: (_) => CustomDialogBox(
          linkText: "Return to Home",
          bodyText: "${message}",
          linkTap: (){ Navigator.pop(context); Navigator.pop(context);},
          dialogHeight: height * 0.45,
          // topPadding: 60,
        )
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    final userBloc = Provider.of<UserBloc>(context, listen: false);

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      List usernameList = userBloc.userModel.fullName!.split(' ');
      usernameList.removeAt(0);


      userBloc.userModel.fullName ==null || userBloc.userModel.fullName =='' ? '' : firstNameController.text = userBloc.userModel.fullName!.split(' ')[0];
      userBloc.userModel.fullName ==null || userBloc.userModel.fullName =='' ? '' : surnameController.text = usernameList.join(" ");
      userBloc.userModel.phoneNumber ==null || userBloc.userModel.phoneNumber =='' ? '' : phoneNumberController.text = userBloc.userModel.phoneNumber!;
      userBloc.userModel.dob ==null || userBloc.userModel.dob =='' ? '' : dobController.text = userBloc.userModel.dob!;
      userBloc.userModel.gender ==null || userBloc.userModel.gender =='' ? '' : genderController.text = userBloc.userModel.gender!;
      userBloc.userModel.digitalAddress ==null || userBloc.userModel.digitalAddress =='' ? '' : addressController.text = userBloc.userModel.digitalAddress!;
      userBloc.userModel.maritalStatus ==null || userBloc.userModel.maritalStatus =='' ? '' : maritalStatusController.text = userBloc.userModel.maritalStatus!;
    });

  }

  @override
  Widget build(BuildContext context) {
    final userBloc = Provider.of<UserBloc>(context);

    List usernameList = userBloc.userModel.fullName!.split(' ');
    usernameList.removeAt(0);
    debugPrint("Updated is ${usernameList.join(" ")}");

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      child: Form(
        key: _formKey,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  TextFormField(
                    controller: firstNameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9.0),
                            borderSide: BorderSide(
                                color: BrandColors.grey,
                                width: 1
                            )
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9.0),
                            borderSide: BorderSide(
                                color: BrandColors.grey,
                                width: 1
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9.0),
                            borderSide: BorderSide(
                                color: BrandColors.grey,
                                width: 1
                            )
                        ),
                        hintText: 'First Name',
                        hintStyle: TextStyle(
                            color: BrandColors.grey300
                        ),
                        label: Text(
                          'First Name',
                        ),
                        labelStyle: TextStyle(
                            color: BrandColors.secondaryColor
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                      )
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    controller: surnameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9.0),
                          borderSide: BorderSide(
                            color: BrandColors.grey,
                            width: 1
                          )
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9.0),
                            borderSide: BorderSide(
                                color: BrandColors.grey,
                                width: 1
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9.0),
                            borderSide: BorderSide(
                                color: BrandColors.grey,
                                width: 1
                            )
                        ),
                        hintText: 'Surname',
                        hintStyle: TextStyle(
                            color: BrandColors.grey300
                        ),
                        label: Text(
                          'Surname',
                        ),
                        labelStyle: TextStyle(
                            color: BrandColors.secondaryColor
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                      )
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                      controller: phoneNumberController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9.0),
                            borderSide: BorderSide(
                                color: BrandColors.grey,
                                width: 1
                            )
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9.0),
                            borderSide: BorderSide(
                                color: BrandColors.grey,
                                width: 1
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9.0),
                            borderSide: BorderSide(
                                color: BrandColors.grey,
                                width: 1
                            )
                        ),
                        hintText: 'Phone Number',
                        hintStyle: TextStyle(
                            color: BrandColors.grey300
                        ),
                        label: Text(
                          'Phone Number',
                        ),
                        labelStyle: TextStyle(
                            color: BrandColors.secondaryColor
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                      )
                  ),
                  SizedBox(height: 8),
                  DateTimeFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9.0),
                          borderSide: BorderSide(
                              color: BrandColors.grey,
                              width: 1
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9.0),
                          borderSide: BorderSide(
                              color: BrandColors.grey,
                              width: 1
                          )
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9.0),
                          borderSide: BorderSide(
                              color: BrandColors.grey,
                              width: 1
                          )
                      ),
                      hintText: 'Date of Birth',
                      hintStyle: TextStyle(
                          color: BrandColors.grey300
                      ),
                      label: Text(
                        'Date of Birth',
                      ),
                      labelStyle: TextStyle(
                          color: BrandColors.secondaryColor
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                    ),
                    mode: DateTimeFieldPickerMode.date,
                    autovalidateMode: AutovalidateMode.always,
                    validator: (e) => (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
                    onDateSelected: (DateTime value) {
                      print(value);
                      dobController.text = value.toString();
                    },
                  ),
                  SizedBox(height: 8),
                ],
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                      controller: genderController,
                      onTap: (){
                        showGenderSelectDialog();
                        // showReProfileDialog();
                      },
                      readOnly: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9.0),
                            borderSide: BorderSide(
                                color: BrandColors.grey,
                                width: 1
                            )
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9.0),
                            borderSide: BorderSide(
                                color: BrandColors.grey,
                                width: 1
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9.0),
                            borderSide: BorderSide(
                                color: BrandColors.grey,
                                width: 1
                            )
                        ),
                        hintText: 'Sex',
                        hintStyle: TextStyle(
                            color: BrandColors.grey300
                        ),
                        label: Text(
                          'Sex',
                        ),
                        labelStyle: TextStyle(
                            color: BrandColors.secondaryColor
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                      )
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                      controller: addressController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9.0),
                            borderSide: BorderSide(
                                color: BrandColors.grey,
                                width: 1
                            )
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9.0),
                            borderSide: BorderSide(
                                color: BrandColors.grey,
                                width: 1
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9.0),
                            borderSide: BorderSide(
                                color: BrandColors.grey,
                                width: 1
                            )
                        ),
                        hintText: 'Home Address',
                        hintStyle: TextStyle(
                            color: BrandColors.grey300
                        ),
                        label: Text(
                          'Home Address',
                        ),
                        labelStyle: TextStyle(
                            color: BrandColors.secondaryColor
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                      )
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                      controller: maritalStatusController,
                      onTap: (){ showMaritalStatusSelectDialog(); },
                      readOnly: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9.0),
                            borderSide: BorderSide(
                                color: BrandColors.grey,
                                width: 1
                            )
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9.0),
                            borderSide: BorderSide(
                                color: BrandColors.grey,
                                width: 1
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9.0),
                            borderSide: BorderSide(
                                color: BrandColors.grey,
                                width: 1
                            )
                        ),
                        hintText: 'Marital Status',
                        hintStyle: TextStyle(
                            color: BrandColors.grey300
                        ),
                        label: Text(
                          'Marital Status',
                        ),
                        labelStyle: TextStyle(
                            color: BrandColors.secondaryColor
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                      )
                  ),
                  SizedBox(height: 20,),
                  CustomButton(
                    width: width * 0.9,
                    elevation: 2.0,
                    onPressed: () async{
                      // Navigator.pushNamed(context, HomePage.id);
                      debugPrint("About to send data for ${maritalStatusController.text}");

                      if(firstNameController.text != '' && firstNameController.text != null
                          && surnameController.text != '' && surnameController.text != null) {
                        showLoading(context);
                        var updateProfileResponse = await HelperFunctions
                            .updateCustomerInformation(
                            userid: userBloc.userModel.userId!,
                            firstname: firstNameController.text,
                            lastname: surnameController.text,
                            phonenumber: phoneNumberController.text,
                            dob: dobController.text,
                            gender: genderController.text,
                            address: addressController.text,
                            maritalstatus: maritalStatusController.text);
                        Navigator.pop(context);
                        debugPrint("Response returned is $updateProfileResponse");
                        if(updateProfileResponse['StatusCode'] == 200){
                          userBloc.updateUser(updateProfileResponse['User']);
                          showUpdateCompleteDialog(updateProfileResponse['StatusDesc']);
                        } else {
                          showCustomFlushBar(context: context, messageText: "Something went wrong", backgroundColor: BrandColors.secondaryColor);
                        }
                        // showUpdateCompleteDialog(message)
                      } else {
                        showCustomFlushBar(context: context, messageText: "Please complete your details", backgroundColor: BrandColors.secondaryColor);
                      }
                    },
                    // buttonColor: BrandColors.primaryColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                            "Submit",
                            style: TextStyle(
                              color: BrandColors.colorWhiteAccent,
                              fontWeight: FontWeight.w400,
                              fontSize: 22.0,
                            )
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
