import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vk_donations/constants.dart';
import 'package:vk_donations/screens/description.dart';
import 'package:vk_donations/screens/donation_form.dart';

class AdditionalInfo extends StatefulWidget{
  @override
  _AdditionalInfoState createState() => _AdditionalInfoState();
}

class _AdditionalInfoState extends State<AdditionalInfo> {

  bool active = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: Container(
        color: Colors.white,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 17.67,),
            TFDescripton(txt: "Автор",),
            SizedBox(height: 8,),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xFFF2F3F5),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 0.5, color: Color.fromRGBO(0, 0, 0, 0.12))
              ),
              padding: EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Матвей Правосудов",
                    style: TextStyle(
                        fontSize: 16
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_down, size: 16, color: Color(0xFFB8C1CC),)
                ],
              ),
            ),
            SizedBox(height: 26,),
            TFDescripton(txt: "Сбор завершится:",),
            SizedBox(height: 19,),
            GestureDetector(
              onTap: (){
                setState(() {
                  active = !active;
                });
              },
              child: Row(
                children: <Widget>[
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          width: 2, color: active ? Color(0xFF3F8AE0) : Color(0xFFB8C1CC)
                      )
                    ),
                    child: (active)
                        ? Center(
                        child: Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF3F8AE0)
                          ),
                        )
                    )
                      : null,
                  ),
                  SizedBox(width: 13,),
                  Text(
                    "Когда соберём сумму",
                    style: TextStyle(
                      fontSize: 16
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 22,),
            GestureDetector(
              onTap: (){
                setState(() {
                  active = !active;
                });
              },
              child: Row(
                children: <Widget>[
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 2, color: !active ? Color(0xFF3F8AE0) : Color(0xFFB8C1CC)
                        )
                    ),
                    child: (!active)
                        ? Center(
                        child: Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF3F8AE0)
                          ),
                        )
                    )
                        : null,
                  ),
                  SizedBox(width: 13,),
                  Text(
                    "В определённую дату",
                    style: TextStyle(
                        fontSize: 16
                    ),
                  )
                ],
              ),
            ),
            !active ?
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 37,),
                  TFDescripton(txt: "Дата окончания",),
                  SizedBox(height: 8,),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFF2F3F5),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 0.5, color: Color.fromRGBO(0, 0, 0, 0.12))
                    ),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "20 сентября",
                          style: TextStyle(
                              fontSize: 16
                          ),
                        ),
                        Icon(Icons.keyboard_arrow_down, size: 16, color: Color(0xFFB8C1CC),)
                      ],
                    ),
                  ),
                ],
              ),
            )
                : Container()
          ],
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (_, __, ___) => Description(regular: true,),
              transitionDuration: Duration(seconds: 0),
            ),
          );
        },
        child: Container(
          padding: EdgeInsets.only(top: 10.5, bottom: 11.5),
          margin: EdgeInsets.all(12),
          width: double.infinity,
          height: 44,
          decoration: BoxDecoration(
              color: VK_Blue,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Center(
              child: Text(
                "Далее",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17
                ),
              )
          ),
        ),
      ),
    );
  }
}