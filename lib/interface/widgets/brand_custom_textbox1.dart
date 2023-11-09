import 'package:flutter/material.dart';

class CustomTextBox1 extends StatelessWidget {
  final String? placeholderText;
  TextEditingController? controller;
  final bool? isPassword;

  CustomTextBox1({
    Key? key,
    this.placeholderText,
    this.controller,
    this.isPassword,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
        borderRadius: BorderRadius.circular(4.0),
      child: TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.0),
              borderSide: BorderSide.none
            ),
            hintText: placeholderText ?? '',
            fillColor: Colors.white,
            filled: true,
              contentPadding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),

          ),
        obscureText: isPassword == true ? true : false,
        enableSuggestions: isPassword == true ? false : true,
        autocorrect: isPassword == true ? false : true,
        validator: (value){
          if(value==null || value.isEmpty){
            return 'Enter value';
          }
          return null;
        },
        controller: controller,
      ),
    );
  }
}
