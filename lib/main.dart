import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: MyApp(),
  )
);
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _currencies =['Rupees','Dollars','Pound'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Interest Calculator"),
      ),
      body:Column(
      children: <Widget>[
        Image.asset('assets/images/pic.png'),
        TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Principal',
          ),
        ),
        TextField(decoration: InputDecoration(
         border: InputBorder.none,
         hintText: "Rate of Interest",
        ),),
        Row(
          children: <Widget>[
            TextField(
              decoration: 
              InputDecoration(
                border: InputBorder.none,
                hintText: 'Term',
              ),
            ),
            DropdownButton<String>(
              items: _currencies.map((String dropDownStringItem){
                  return DropdownMenuItem<String>(
                    value: dropDownStringItem,
                    child: Text(dropDownStringItem),
                  
                  );

              }).toList(),
            ),
            Row(
              children: <Widget>[
                RaisedButton(
                  child: Text('Calculate'),
                  onPressed: (){
                    setState(() {
                      
                    });
                  },
                ),
                RaisedButton(
                  child: Text('Reset'),
                  onPressed: (){
                    setState(() {
                      
                    });
                  },
                )
              ],
            )
          ],
        ),
        
      ],
      
    )
    );
  }
}



/*

import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(

  home: Scaffold(
    appBar: AppBar(
      title:Text('Notification')
    ),
    body: MyApp(),

  )
)
);

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void showSnackbar(){
 final snackbar =SnackBar(
   content: Text('sncakbar here'),
   action:  SnackBarAction(
     label: "OK",
     onPressed:(){}
   ),
 );
 Scaffold.of(context).showSnackBar(snackbar);
   }
  void showBottom(){
    showModalBottomSheet(
      context: context
    ,
     builder: (builder){
       return Container(
         height: 100,
         color: Colors.deepOrange,
         child: Center(
           child:Text("Bottom Sheet Modal"),
         ),

       );
     });

  }

  Future <Null> showsimpleDialog() async{
    return showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
            title: Text("SImple Dialog"),
            content: Text("The message you want"),
            actions: <Widget>[
              FlatButton(
                child: Text("Down"),
                onPressed: (){
                  Navigator.of(context).pop();
                },
              )
            ],
        );
      }
    );

  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MaterialButton(
            child: Text('SnackBar'),
            color: Colors.blue,
            textColor: Colors.white,
            splashColor: Colors.green,
            onPressed: (){
              showSnackbar();
            },
          ),
        ),


         Padding(
          padding: const EdgeInsets.all(8.0),
          child: MaterialButton(
            child: Text('Modal Button'),
            color: Colors.blue,
            textColor: Colors.white,
            splashColor: Colors.green,
            onPressed: (){
              showBottom();
            },
          ),
        ),



         Padding(
          padding: const EdgeInsets.all(8.0),
          child: MaterialButton(
            child: Text('Simple Dialog'),
            color: Colors.blue,
            textColor: Colors.white,
            splashColor: Colors.green,
            onPressed: (){
              showsimpleDialog();
            },
          ),
        ),
      ],
      
    );
  }
}

*/