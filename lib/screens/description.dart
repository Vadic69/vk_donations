import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vk_donations/constants.dart';

class Description extends StatefulWidget{
  bool regular = true;
  Description({
    this.regular,
    Key key,
  }) : super(key: key);
  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
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
          "Матвей",
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
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12,),
              child: TextField(
                minLines: 1,
                style: TextStyle(
                  fontSize: 15
                ),
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 12,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1, color: Color.fromRGBO(0, 0, 0, 0.08))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 140,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/cat.png"),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  SizedBox(height: 8,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                        "Добряши помогают котикам",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      "Матвей Правосудов   ${widget.regular ? "Помощь нужна каждый месяц" : "Закончится через 5 дней"}",
                      style: TextStyle(
                          fontSize: 13,
                        color: Color(0xFF818C99)
                      ),
                    ),
                  ),
                  SizedBox(height: 8,),
                  Container(
                    height: 0.5,
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    color: Color(0xFFD7D8D9),
                  ),
                  SizedBox(height: 11.5,),
                  Container(
                    height: 42,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 12,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Помогите первым"),
                              SizedBox(height: 8,),
                              Container(
                                width: MediaQuery.of(context).size.width - 24 - 86 - 18 - 12,
                                height: 4,
                                color: Color(0xFF3F8AE0),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          right: 0,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 1, color: Color(0xFF3F8AE0)),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            margin: EdgeInsets.only(right: 12, bottom: 12),
                            padding: EdgeInsets.only(
                                top: 5.5,
                                bottom: 6.5,
                                left: 16,
                                right: 16
                            ),
                            child: Text("Помочь", style: TextStyle(color: Color(0xFF3F8AE0)),),
                          ),
                        )
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