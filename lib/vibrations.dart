// import 'package:flutter/material.dart';



// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     final title = 'Gesture Demo';

// //     return MaterialApp(
// //       title: title,
// //       home: MyHomePage(),
// //     );
// //   }
// // }

// // class MyHomePage extends StatelessWidget {
// //   final String title;

// //   MyHomePage({Key key, this.title}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(

// //       body: Center(child: 
// //       Column(
          
// //               mainAxisAlignment: MainAxisAlignment.center,
// //             children:<Widget>[
      

// //       Dash(),
// //             ]
// //       )
// //     )
    
  
// //     );
// //   }
// //   }
// // class Dash extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     // The GestureDetector wraps the button.
// //     return GestureDetector(
// //       // When the child is tapped, show a snackbar.
// //       onLongPress: () {
// //         final snackBar = SnackBar(content: Text("dash"));

// //         Scaffold.of(context).showSnackBar(snackBar);
// //       },
// //       onTap: (){
// //         final snackBar = SnackBar(content: Text("dot"));

// //         Scaffold.of(context).showSnackBar(snackBar);
// //       },
      
// //       // The custom button
// //       child: Container(
// //         padding: EdgeInsets.all(12.0),
// //         decoration: BoxDecoration(
// //           color: Theme.of(context).buttonColor,
// //           borderRadius: BorderRadius.circular(8.0),
// //         ),
// //         child: Text('dash'),
// //       ),
// //     );
// //   }
// // }


// // class MyAp extends StatefulWidget {
// //   @override
// //   MyApState createState() {
// //     return new MyApState();
// //   }
// // }

// // class MyApState extends State<MyAp> {
// //   bool pressed = false;

// //   @override
// //   Widget build(BuildContext context) {
    
// //     return Scaffold(

// //       body: Center(
// //        child: Column(
          
// //         mainAxisAlignment: MainAxisAlignment.center,
       
// //           children: <Widget>[
// //             pressed ? Text(" dot") : Text("dash"),
// //             RaisedButton(
// //               child: Text("show text"),
// //               onPressed: () {
// //                 setState(() {
// //                   pressed = true;
// //                 });
// //               },
// //               onLongPress: () {
// //                 setState(() {
// //                   pressed = false;
// //                 });
// //               },
// //             )
// //           ],
// //         ),
// //       ),
// //     );
 
// //   }
// //   }



// // class TabBarDemo extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: DefaultTabController(
// //         length: 2,
// //         child: Scaffold(
// //           appBar: AppBar(
// //             bottom: TabBar(
// //               tabs: [
// //                 Tab(icon: Icon(Icons.lens ), text: "Dot",),
// //                 Tab(icon: Icon(Icons.remove), text: "Dash" , ),
                
// //               ],
// //             ),
// //             title: Text('Tabs Demo'),
// //           ),
// //           body: TabBarView(
// //             children: [
// //               Icon(Icons.lens ),
// //               Icon(Icons.remove ,size: 74.0),
             
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }














// import 'package:flutter/material.dart';
// import 'package:vibration/vibration.dart';
// import 'package:morse/morse.dart';

// class MyAppBar extends StatefulWidget {
//   MyAppBar({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyAppBarState createState() => _MyAppBarState();
// }

// class _MyAppBarState extends State<MyAppBar> {


//   void _incrementCounter() {
//     setState(() async {

//       if (await Vibration.hasVibrator()) {
//       Vibration.vibrate();
//       }
//       if (await Vibration.hasAmplitudeControl()) {
//       Vibration.vibrate(amplitude: 128);
//       }
//       final String message = 'welcome';
//       String encodedMessage =  new Morse(message).encode();

//       List<String> MorsePattern = encodedMessage.split('');

      
//       List<int> INTMorsePattern = [];

//       for (var i= 0; i < MorsePattern.length; i++)
//         {
//           if ((MorsePattern[i] == ".") || (MorsePattern[i] == " ."))
//           {
//             INTMorsePattern.add(200);
//           }
//           else if ((MorsePattern[i] == "-") || (MorsePattern[i] == " -"))
//           {
//             INTMorsePattern.add(600);
//           }
//           if ((MorsePattern[i] == "  ") || (MorsePattern[i] == " "))
//           {
//             INTMorsePattern.add(600);
//           }
//         }

//       print(INTMorsePattern);

//       Vibration.vibrate(pattern: INTMorsePattern);
//       });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Row(
//         children: <Widget>[IconButton(icon: Icon(Icons.menu), 
//         tooltip: 'Navigation menu',
//         onPressed: _incrementCounter,
//         ),
//         ],
//       ),
//     );
//   }
// }
// class MyScaffold extends StatelessWidget
// {
//   @override
//   Widget build(BuildContext context)
//   {
//     return MaterialApp(theme: ThemeData(primarySwatch: Colors.blue,),
//       home: Scaffold(body: Center(child: MyAppBar(),)
//       )
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:MYO/manual.dart';
import 'package:MYO/welcome.dart';


class Control extends StatefulWidget {
 
  Control({Key key, this.title}) : super(key: key);
  
  final String title ;

  @override
  _ControlState createState() => _ControlState();
}

class _ControlState extends State<Control> {
 bool pressed = false;
   Widget _myWidget(BuildContext context) {
      return RichText(
        text: TextSpan(
          // set the default style for the children TextSpans
          style: Theme.of(context).textTheme.body1.copyWith(fontSize: 30),
          children: [
            TextSpan(
                text: '''Home ''',
                style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )
            ),
            TextSpan(
              text: 'Controller\n\n',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w100,
              )
            ),
        
          ]
          
        )
      );
    }
    
   
final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return new Material(
      color : Colors.blue[700],
      textStyle: TextStyle(color: Colors.white),
      child : Center(
                  child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
              Form (
                child: _myWidget(context),
              ),
              
             RaisedButton(
              child: Text("ON/OFF"),
              color: Colors.blue[900], 
              textColor: Colors.white,
              onPressed: () {
                setState(() {
                  pressed = true;
                });
              },
              onLongPress: () {
                setState(() {
                  pressed = false;
                });
              },
              
              shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(16.0),
                          side: BorderSide(color: Colors.blue[900],)
                  ),
            ),
            pressed ? Text(" ON") : Text("OFF"),
            Text
              (
                    "\n\n Short tab for ON \n Long Tab For OFF"
              ),
              
              ],)
                
        
      )
      );
  }
}
  