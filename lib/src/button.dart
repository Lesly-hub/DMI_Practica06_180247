import 'package:flutter/material.dart';


class MyButton extends StatefulWidget{
  @override
  MyButtonState createState()=> MyButtonState();
}

class MyButtonState extends State<MyButton> {
String flutterText = ""; //Crea una variable de ejecucion de button
int index = 0;
List<String> collections = ["Lesly","Yareth","Hernandez"];

void onPressButton(){
  setState(() {
    flutterText = collections[index];
    index = index < 2 ? index +1:0;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget"),
        backgroundColor: Color.fromARGB(255, 8, 1, 6),
      ),
      body: Container(
        child: Center(
          child: Column(   
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                flutterText,
              style: TextStyle(
                fontSize: 40.0
              )),
              Padding(padding: EdgeInsets.all(10.0),),
              ElevatedButton(
                child: Text("Actualizar",style: TextStyle(color: Color.fromARGB(212, 255, 186, 146)),),
                onPressed: onPressButton,)
            ],
          ),

        ),
      ),
      );
  }
      
}

