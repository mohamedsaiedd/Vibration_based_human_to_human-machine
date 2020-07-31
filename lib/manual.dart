
import 'package:flutter/material.dart';
import 'package:MYO/addContact.dart';
import 'package:MYO/internet.dart';
import 'package:MYO/messages.dart';
import 'package:MYO/vibrations.dart';
import 'package:swipedetector/swipedetector.dart';
import 'package:vibration/vibration.dart';
import 'package:morse/morse.dart';

class Manual extends StatefulWidget {
  @override
  _ManualState createState() => new _ManualState();
}

class _ManualState extends State<Manual> {
  String _swipeDirection = "";
  void _swipeup() {
    setState(() async {

      if (await Vibration.hasVibrator()) {
      Vibration.vibrate();
      }
      if (await Vibration.hasAmplitudeControl()) {
      Vibration.vibrate(amplitude: 128);
      }
      final String message = 'welcome';
      String encodedMessage =  new Morse(message).encode();

      List<String> MorsePattern = encodedMessage.split('');

      
      List<int> INTMorsePattern = [];

      for (var i= 0; i < MorsePattern.length; i++)
        {
          if ((MorsePattern[i] == ".") || (MorsePattern[i] == " ."))
          {
            INTMorsePattern.add(200);
          }
          else if ((MorsePattern[i] == "-") || (MorsePattern[i] == " -"))
          {
            INTMorsePattern.add(600);
          }
          if ((MorsePattern[i] == "  ") || (MorsePattern[i] == " "))
          {
            INTMorsePattern.add(600);
          }
        }

      print(INTMorsePattern);

      Vibration.vibrate(pattern: INTMorsePattern);
      });
  }
   void _swiperight() {
    setState(() async {

      if (await Vibration.hasVibrator()) {
      Vibration.vibrate();
      }
      if (await Vibration.hasAmplitudeControl()) {
      Vibration.vibrate(amplitude: 128);
      }
      final String message = 'home controller';
      String encodedMessage =  new Morse(message).encode();

      List<String> MorsePattern = encodedMessage.split('');

      
      List<int> INTMorsePattern = [];

      for (var i= 0; i < MorsePattern.length; i++)
        {
          if ((MorsePattern[i] == ".") || (MorsePattern[i] == " ."))
          {
            INTMorsePattern.add(200);
          }
          else if ((MorsePattern[i] == "-") || (MorsePattern[i] == " -"))
          {
            INTMorsePattern.add(600);
          }
          if ((MorsePattern[i] == "  ") || (MorsePattern[i] == " "))
          {
            INTMorsePattern.add(600);
          }
        }

      print(INTMorsePattern);

      Vibration.vibrate(pattern: INTMorsePattern);
      });
  }
   void _swipeleft() {
    setState(() async {

      if (await Vibration.hasVibrator()) {
      Vibration.vibrate();
      }
      if (await Vibration.hasAmplitudeControl()) {
      Vibration.vibrate(amplitude: 128);
      }
      final String message = 'messages';
      String encodedMessage =  new Morse(message).encode();

      List<String> MorsePattern = encodedMessage.split('');

      
      List<int> INTMorsePattern = [];

      for (var i= 0; i < MorsePattern.length; i++)
        {
          if ((MorsePattern[i] == ".") || (MorsePattern[i] == " ."))
          {
            INTMorsePattern.add(200);
          }
          else if ((MorsePattern[i] == "-") || (MorsePattern[i] == " -"))
          {
            INTMorsePattern.add(600);
          }
          if ((MorsePattern[i] == "  ") || (MorsePattern[i] == " "))
          {
            INTMorsePattern.add(600);
          }
        }

      print(INTMorsePattern);

      Vibration.vibrate(pattern: INTMorsePattern);
      });
  }
   void _swipedown() {
    setState(() async {

      if (await Vibration.hasVibrator()) {
      Vibration.vibrate();
      }
      if (await Vibration.hasAmplitudeControl()) {
      Vibration.vibrate(amplitude: 128);
      }
      final String message = 'internet';
      String encodedMessage =  new Morse(message).encode();

      List<String> MorsePattern = encodedMessage.split('');

      
      List<int> INTMorsePattern = [];

      for (var i= 0; i < MorsePattern.length; i++)
        {
          if ((MorsePattern[i] == ".") || (MorsePattern[i] == " ."))
          {
            INTMorsePattern.add(200);
          }
          else if ((MorsePattern[i] == "-") || (MorsePattern[i] == " -"))
          {
            INTMorsePattern.add(600);
          }
          if ((MorsePattern[i] == "  ") || (MorsePattern[i] == " "))
          {
            INTMorsePattern.add(600);
          }
        }

      print(INTMorsePattern);

      Vibration.vibrate(pattern: INTMorsePattern);
      });
  }
  
     Widget _slogn(BuildContext context) {
      return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          // set the default style for the children TextSpans
          style: Theme.of(context).textTheme.body1.copyWith(fontSize: 30),
          children: [
            TextSpan(
                text: '''Enjoy ''',
                style: TextStyle(
                color: Colors.blue[700],
                fontWeight: FontWeight.bold,
              )
            ),
            TextSpan(
              text: 'Your life \n',
              style: TextStyle(
                color: Colors.blue[700],
                fontWeight: FontWeight.w100,
              )
            ),
          TextSpan(
              text: 'We Are Here For You',
              style: TextStyle(
                color: Colors.blue[700],
                fontSize: 13,
                fontWeight: FontWeight.w100,
                letterSpacing:3.0,
              )
            ),
          ]
          
        )
      );
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Container(
          child: Row(
            children: <Widget>[
              Expanded(
                child: SizedBox.expand(
                child: SwipeDetector(
                  child: Card(
                    child: Container(
                      padding: EdgeInsets.only(
                        top:80.0,
                        bottom: 50.0,
                        left: 16.0,
                        right: 16.0,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                         Text( 'Main Menu\n\n\n\n',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.blue[700],
                                fontWeight: FontWeight.w100,
                              )),
                          Center(
                            child: RichText(
                             text: 
                            TextSpan(
                                // set the default style for the children TextSpans
                                style: Theme.of(context).textTheme.body1.copyWith(fontSize: 30),
                                children: [
                                  
                                  TextSpan(
                                      text: 'Swipe Up To Add Contact\n',
                                      style: TextStyle(
                                      color: Colors.blue[700],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                    )
                                  ),
                                  TextSpan(
                                      text: 'Swipe Down For Internet\n',
                                      style: TextStyle(
                                      color: Colors.blue[700],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                    )
                                  ),
                                  TextSpan(
                                      text: 'Swipe Left For Messages\n',
                                      style: TextStyle(
                                      color: Colors.blue[700],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                    )
                                  ),
                                  
                                  TextSpan(
                                      text: 'Swipe Right To Control\n',
                                      style: TextStyle(
                                      color: Colors.blue[700],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                    )
                                  ),
                                  TextSpan(
                                      text: 'Flip To Confirm\n',
                                      style: TextStyle(
                                      color: Colors.blue[700],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                    )
                                  ),
                                  TextSpan(
                                      text: 'Shake To Deny\n\n\n\n\n',
                                      style: TextStyle(
                                      color: Colors.blue[700],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      
                                    )
                                  ),
                              
                                ]
                                
                              )
                              ),
                          ),
                          Text(
                            '$_swipeDirection',
                            style: TextStyle(),
                          ),
                          Form(child: _slogn(context)),
                        ],
                      ),
                    ),
                  ),
                  onSwipeUp: () {
                    
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddContact()),
                  );
                  _swipeup();
                    setState(() {
                      _swipeDirection = "Swipe Up";
                    });
                  },
                  onSwipeDown: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Internet()),
                  );
                  _swipedown();
                    setState(() {
                      _swipeDirection = "Swipe Down";
                    });
                  },
                  onSwipeLeft: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Internet()),
                  );
                  _swipeleft();
                    setState(() {
                      _swipeDirection = "Swipe Left";
                    });
                  },
                  onSwipeRight: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Control()),

                  );
                  _swiperight();
                    setState(() {
                      _swipeDirection = "Swipe Right";
                    });
                  },
                  swipeConfiguration: SwipeConfiguration(
                      verticalSwipeMinVelocity: 100.0,
                      verticalSwipeMinDisplacement: 50.0,
                      verticalSwipeMaxWidthThreshold:100.0,
                      horizontalSwipeMaxHeightThreshold: 50.0,
                      horizontalSwipeMinDisplacement:50.0,
                      horizontalSwipeMinVelocity: 200.0),
                ),
              )
              )
            ],
          ),
        ),
      ),
    );
  }
}





















/*import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
*/