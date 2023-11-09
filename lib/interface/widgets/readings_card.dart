import 'package:flutter/material.dart';
import 'package:medical_application/index.dart';

class ReadingsCard extends StatefulWidget {
  final String? reading;
  final String? graphUrl;

  const ReadingsCard({
    Key? key,
    this.reading,
    this.graphUrl
  }) : super(key: key);

  @override
  State<ReadingsCard> createState() => _ReadingsCardState();
}

class _ReadingsCardState extends State<ReadingsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 9),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xfff2f3f4),
            spreadRadius: 2
          )
        ],
        color: Colors.white
      ),
      child: Column(
        children: [
          Spacer(),
          Row(
            children: [
              Spacer(),
              Text(
                  widget.reading ?? "7.2",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  )
              ),
              Text(
                  "hrs",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  )
              ),
              Spacer()
            ],
          ),
          SizedBox(height: 5,),
          Image.asset(
            widget.graphUrl ?? Assets.vector51,
            width: 26,
            height: 4,
          ),
          SizedBox(height: 5,),
          Text(
              "Heart Beat",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
              )
          ),
          Spacer()
        ],
      ),
    );
  }
}
