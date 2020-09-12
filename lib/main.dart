import 'package:flutter/material.dart';
import 'package:vk_donations/constants.dart';
import 'package:vk_donations/screens/select_type.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "SFPro",
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            "Пожертвования",
          style: TextStyle(
            fontFamily: "TTCommons",
            fontWeight: FontWeight.w600,
            color: Colors.black
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "У Вас пока нет сборов.\nНачните доброе дело.",
              style: TextStyle(
                color: VK_Grey,
                fontSize: 16
              ),
            ),
            SizedBox(height: 24,),
            GestureDetector(
              onTap: ()
              {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => SelectType(),
                    transitionDuration: Duration(seconds: 0),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: VK_Blue,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 16, right: 16, top: 7.5, bottom: 8.5
                ),
                  child: Text(
                    "Создать сбор",
                    style: TextStyle(
                        color: Colors.white,
                      fontSize: 15
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
