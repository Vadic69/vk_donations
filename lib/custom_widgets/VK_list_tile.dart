import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vk_donations/constants.dart';

class VK_ListTile extends StatelessWidget{
  final String title, subtitle;
  final String icon;
  final Function onTap;

  VK_ListTile({this.title, this.icon, this.subtitle, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: VK_LightGrey,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 0.33, color: Color.fromRGBO(0, 0, 0, 0.08))
        ),
        margin: EdgeInsets.symmetric(horizontal: 12),
        width: double.infinity,
        child: Stack(
          children: <Widget>[
            Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  left: 14,
                  top: 14,
                  right: 14,
                  bottom: 24
                ),
                child: SvgPicture.asset(icon, height: 24, color: VK_DeepBlue,)
                //Icon(icon, size: 24, color: VK_DeepBlue,),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16
                      ),
                    ),
                    SizedBox(height: 2,),
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ],

          ),
            Positioned(
              child: Icon(Icons.arrow_forward_ios, size: 16.5, color: Color(0xFFB8C1CC),),
              right: 18.75,
              top: 22.75,
            )
          ]
        )
      ),
    );
  }

}
