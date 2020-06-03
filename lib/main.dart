import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      home : MyButton(),
      debugShowCheckedModeBanner: false,
    ),
  );
}


class MyButton extends StatefulWidget {
  @override
  MyButtonState createState() {
    return MyButtonState();
  }
}

class MyButtonState extends State<MyButton>{
  int counter = 0;
  List <String> spanishNumbers = [
    "uno",
    "dos",
    "tres",
    "cuatro",
    "cinco",
    "seis",
    "seite",
    "ocho",
    "nueve",
    "deitz"
  ];

  String defaultText = "Spanish Numbers";

  void displaysNumbers(){
    setState(() {
      defaultText = spanishNumbers[counter] + "\n  ${counter + 1}";
      if (counter < 9){
        counter++;
      }
      else{
        counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counting Numbers"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: Center(
          child : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children : <Widget>[
              Text(defaultText, style : TextStyle(fontSize: 30.0)),
              Padding(padding: EdgeInsets.all(150.0)),
                  RaisedButton(
                    onPressed: displaysNumbers,
                    child : Text('Call on numbers', style: TextStyle(
                      color: Colors.white,
                    ),),
                    color: Colors.orange,
                  ),
                ],
              )
          )
        ),
    );
  }
}
