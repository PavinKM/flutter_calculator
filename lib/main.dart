import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  // double size = MediaQuery.of(context).size.width / 5;

  @override
  Widget build(BuildContext context) {

    

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            //line 1
            Column(
              children: [
                Row(
                  children: [
                    calcButton("7", Colors.white),
                    calcButton("8", Colors.white),
                    calcButton("9", Colors.white),
                    calcButton("/", Colors.orange)
                  ],
                )
              ],
            ),

          ],
        )
      ),
    );
  }

  Widget calcButton(String text, Color bgColor){
    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      margin: EdgeInsets.all(10),
                      // height: size,
                      // width: size,
                      alignment: Alignment.center,
                      child: Text(
                        text,
                        style: TextStyle(
                          color:bgColor,
                          fontSize: 30
                        ),
                      )
                    );
  }

}
