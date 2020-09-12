import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vk_donations/constants.dart';
import 'package:vk_donations/custom_widgets/VK_list_tile.dart';
import 'package:vk_donations/screens/donation_form.dart';

class SelectType extends StatefulWidget{
  @override
  _SelectTypeState createState() => _SelectTypeState();
}

class _SelectTypeState extends State<SelectType> {
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
          "Тип сбора",
          style: TextStyle(
              fontFamily: "TTCommons",
              fontWeight: FontWeight.w600,
              color: Colors.black
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            VK_ListTile(
              title: "Целевой сбор",
              subtitle: "Когда есть определённая цель",
              icon: "assets/icons/aim.svg",
              onTap: (){
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => DonationForm(regular: false,),
                    transitionDuration: Duration(seconds: 0),
                  ),
                );

              },
            ),
            SizedBox(height: 12,),
            VK_ListTile(
              title: "Регулярный сбор",
              subtitle: "Если нужна помощь ежемесячно",
              icon: "assets/icons/regular_donation.svg",
              onTap: (){
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => DonationForm(regular: true,),
                    transitionDuration: Duration(seconds: 0),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}