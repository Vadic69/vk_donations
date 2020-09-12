import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vk_donations/constants.dart';

class AdditionalInfo extends StatefulWidget{
  @override
  _AdditionalInfoState createState() => _AdditionalInfoState();
}

class _AdditionalInfoState extends State<AdditionalInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: VK_DeepBlue
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        bottom: PreferredSize(
          child: Container(
            color: VK_AppBarGrey,
            width: MediaQuery.of(context).size.width*0.936,
            height: 0.33,
          ),
          preferredSize: Size.fromHeight(0),
        ),
        title: Text(
          "Дополнительно",
          style: TextStyle(
              fontFamily: "TTCommons",
              fontWeight: FontWeight.w600,
              color: Colors.black
          ),
        ),
      ),
    );
  }
}