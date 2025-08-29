//material.dart → provides most common UI widgets (AppBar, Scaffold, Text, Button, etc.).
import 'package:flutter/material.dart';

//App starts here (main function)
void main(){
  //runApp(MyApp()) loads the root widget MyApp and shows it on screen.
  runApp(
      MyApp()
  );
}

//MyApp is a StatelessWidget → means it does not store any changeable data.
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(   //MaterialApp → wrapper that sets up the app (theme, routes, title, etc.).
      title: "Counter App",
      home: MyHomepage(),   //home: MyHomepage() → tells Flutter the first screen should be MyHomepage.
      debugShowCheckedModeBanner: false,  //Ban the debug checked mark.
    );
  }
}

//MyHomepage is a StatefulWidget → means it has data that can change.
class MyHomepage extends StatefulWidget {

  @override
  State<MyHomepage> createState(){ //createState() → connects this widget with its State class (below: MyHomepageUI).
    return MyHomepageUI();
  }
}

class MyHomepageUI extends State<MyHomepage>{
  int countNumber=0;  //countNumber = 0 → starting value of the counter.

  @override
  Widget build(BuildContext context) {  //build() → runs every time the UI needs to update.
    return Scaffold(  //Scaffold → provides a ready-made page structure (AppBar, Body, Floating Button).
      appBar: AppBar(   //AppBar → the top bar showing “Counter App”.
        title: Text('Counter App'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Text(countNumber.toString()),  //countNumber.toString() converts the number into text.
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),   ////FloatingActionButton → circular button at bottom with + icon.
        backgroundColor: Colors.tealAccent,
        onPressed: (){  //onPressed() → runs when the button is clicked.
          setState(() {
            countNumber++;  //increases the number by 1 and setState() tells Flutter to rebuild.
          }
          );
        },
      ),
    );
  }
  
}