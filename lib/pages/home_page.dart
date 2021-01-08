import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Center(
                child: Text("welcome", style: TextStyle(fontSize: 24),).tr(),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: FlatButton(
                    height: 45,
                    color: Colors.green,
                    onPressed: (){
                      context.locale = Locale('en', 'US');
                    },
                    child: Center(
                      child: Text("English", style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ),
                SizedBox(width: 5,),
                Expanded(
                  child: FlatButton(
                    height: 45,
                    color: Colors.red,
                    onPressed: (){
                      context.locale = Locale('ru', 'RU');
                    },
                    child: Center(
                      child: Text("Russian", style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ),
                SizedBox(width: 5,),
                Expanded(
                  child: FlatButton(
                    height: 45,
                    color: Colors.blue,
                    onPressed: (){
                      context.locale = Locale('uz', 'UZ');
                    },
                    child: Center(
                      child: Text("Uzbek", style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ),
                SizedBox(width: 5,),
                Expanded(
                  child: FlatButton(
                    height: 45,
                    color: Colors.orange,
                    onPressed: (){
                      context.locale = Locale('fr', 'FR');
                    },
                    child: Center(
                      child: Text("Fench", style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}
