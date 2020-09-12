import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vk_donations/constants.dart';
import 'package:vk_donations/screens/additional_info.dart';
import 'package:vk_donations/screens/description.dart';

class DonationForm extends StatefulWidget{
  bool regular = true;
  DonationForm({
    this.regular,
    Key key,
  }) : super(key: key);

  @override
  _DonationFormState createState() => _DonationFormState();
}

class _DonationFormState extends State<DonationForm> {

  TextEditingController sumController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: VK_DeepBlue
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          widget.regular ? "Регулярный сбор" : "Целевой сбор",
          style: TextStyle(
              fontFamily: "TTCommons",
              fontWeight: FontWeight.w600,
              color: Colors.black
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 4,),
              DonationPhoto(),
              SizedBox(height: 26,),
              TFDescripton(txt: "Название сбора",),
              SizedBox(height: 8,),
              VKTextField(hintText: "Название сбора",),
              SizedBox(height: 26,),
              TFDescripton(txt: "Сумма, ₽",),
              SizedBox(height: 8,),
              VKTextField(
                controller: sumController,
                hintText: "Сколько нужно собрать?",
                inputType: TextInputType.number,
              ),
              SizedBox(height: 26,),
              TFDescripton(txt: "Цель",),
              SizedBox(height: 8,),
              VKTextField(hintText: "Например, лечение человека",),
              SizedBox(height: 26,),
              TFDescripton(txt: "Описание",),
              SizedBox(height: 8,),
              VKTextField(hintText: "На что пойдут деньги и как они кому-то помогут?", minLines: 2, maxLines: 150,),
              SizedBox(height: 26,),
              TFDescripton(txt: "Куда получать деньги?",),
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
                        "Счёт VK Pay · 1234",
                      style: TextStyle(
                        fontSize: 16
                      ),
                    ),
                    Icon(Icons.keyboard_arrow_down, size: 16, color: Color(0xFFB8C1CC),)
                  ],
                ),
              ),
              SizedBox(height: 24,),
              VKBottomButton(
                onTap: widget.regular
                    ? (){
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (_, __, ___) => AdditionalInfo(),
                      transitionDuration: Duration(seconds: 0),
                    ),
                  );
                }
                    : (){
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (_, __, ___) => Description(regular: widget.regular,),
                      transitionDuration: Duration(seconds: 0),
                    ),
                  );
                },
              ),
              SizedBox(height: 26)
            ],
          ),
        ),
      ),
    );
  }
}

class VKBottomButton extends StatelessWidget {
  final Function onTap;
  const VKBottomButton({
    Key key,
    this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(top: 10.5, bottom: 11.5),
        width: double.infinity,
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
    );
  }
}

class VKTextField extends StatelessWidget {
  final TextEditingController controller;
  final Function onChange;
  final String hintText;
  final int minLines, maxLines;
  final TextInputType inputType;
  const VKTextField({
    this.controller,
    this.onChange,
    this.hintText,
    this.inputType,
    this.minLines = 1,
    this.maxLines = 1,
    Key key,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: TextStyle(
        fontSize: 16,
      ),
      keyboardType: inputType,
      textCapitalization: TextCapitalization.sentences,
      minLines: minLines,
      maxLines: maxLines,
      onChanged: onChange,
      decoration: InputDecoration(
        hintStyle: TextStyle(
          color: Color(0xFF818C99)
        ),
        hintText: hintText,
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.12), width: 0.5)
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.12), width: 0.5)
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.12), width: 0.5)
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.12), width: 0.5)
        ),
        contentPadding: EdgeInsets.all(12),
        filled: true,
        fillColor: Color(0xFFF2F3F5)
      ),
    );
  }
}

class TFDescripton extends StatelessWidget {
  final String txt;
  const TFDescripton({
    Key key,
    this.txt
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(
        fontSize: 14,
        color: Color(0xFF6D7885)
      ),
    );
  }
}

class DonationPhoto extends StatelessWidget {
  const DonationPhoto({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: VK_DeepBlue,
      strokeWidth: 1,
      radius: Radius.circular(10),
      borderType: BorderType.RRect,
      dashPattern: [4,4],
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10)
        ),
        padding: EdgeInsets.symmetric(vertical: 60),
        child: Center(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset("assets/icons/image.svg", width: 22,),
                SizedBox(width: 11,),
                Text(
                    "Загрузить обложку",
                    style: TextStyle(
                      fontSize: 16,
                      color: VK_DeepBlue
                    ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}