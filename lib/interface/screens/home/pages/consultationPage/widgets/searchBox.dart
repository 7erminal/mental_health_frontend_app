import 'package:flutter/material.dart';
import 'package:medical_application/index.dart';
import 'package:icon_forest/flat_icons_medium.dart';

class SearchBox extends StatelessWidget {
  final String? placeholderText;

  const SearchBox({Key? key, this.placeholderText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      leading: const Icon(FlatIconsMedium.search, color: BrandColors.grey300,),
      padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20)),
      hintText: "Enter a therapist's name or speciality",
      hintStyle: MaterialStateProperty.all(TextStyle(color: BrandColors.grey300)),
    );
  }
}
