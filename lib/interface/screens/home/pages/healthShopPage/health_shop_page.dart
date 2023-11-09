import 'package:flutter/material.dart';

class HealthShop extends StatefulWidget {
  const HealthShop({Key? key}) : super(key: key);

  @override
  State<HealthShop> createState() => _HealthShopState();
}

class _HealthShopState extends State<HealthShop> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        height: height,
        width: width,
      ),
    );
  }
}
