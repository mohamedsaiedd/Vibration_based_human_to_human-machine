import 'package:flutter/material.dart';
import 'package:MYO/morse_code.dart';
import 'package:MYO/manual.dart';
import 'package:swipedetector/swipedetector.dart';
import 'package:vibration/vibration.dart';
import 'package:morse/morse.dart';
import 'package:sensors/sensors.dart';


  
class Welcome extends StatefulWidget {
 
  Welcome({Key key, this.title}) : super(key: key);
  
  final String title ;

  @override
  _WelcomeState createState() => _WelcomeState();
}


class _WelcomeState extends State<Welcome> {

  String _swipeDirection = "";
   Widget _myWidget(BuildContext context) {
      return RichText(
        text: TextSpan(
                              // set the default style for the children TextSpans                    
          style: Theme.of(context).textTheme.body1.copyWith(fontSize: 30),
          children: [
            TextSpan(
                text: '''Enjoy ''',
                style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )
            ),
            TextSpan(
              text: 'Your life',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w100,
              )
            ),
        
          ]
          
        )
      );
    }
       void _swipedown() {
    setState(() async {

      if (await Vibration.hasVibrator()) {
      Vibration.vibrate();
      }
      if (await Vibration.hasAmplitudeControl()) {
      Vibration.vibrate(amplitude: 128);
      }
      final String message = 'morse code guide';
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
     void _welcome() {
          Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Manual()),
                                );
            setState(() async {

      if (await Vibration.hasVibrator()) {
      Vibration.vibrate();
      }
      if (await Vibration.hasAmplitudeControl()) {
      Vibration.vibrate(amplitude: 128);
      }
      final String message = 
      "welcome";
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
  void _username() {
    setState(() async {

      if (await Vibration.hasVibrator()) {
      Vibration.vibrate();
      }
      if (await Vibration.hasAmplitudeControl()) {
      Vibration.vibrate(amplitude: 128);
      }
      final String message = 'user name';
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
   void _swipeup() {
            setState(() async {

      if (await Vibration.hasVibrator()) {
      Vibration.vibrate();
      }
      if (await Vibration.hasAmplitudeControl()) {
      Vibration.vibrate(amplitude: 128);
      }
      final String message = 
      "swipe up to add contact swipe down for internet swipe left for messages swipe right to control to confim the option flip ";
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
      }
      
      );
  }

   

  @override
  Widget build(BuildContext context) {
    return new Material(
      color : Colors.blue[700],
      textStyle: TextStyle(color: Colors.white),
            child : Center(
             child: SizedBox.expand(
            child:SwipeDetector(
                    child: Card(
                          color: Colors.blue[700],
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget>[ 
               GestureDetector(
                onTap: _welcome,
                child: Text(
                            'Welcome',
                            textAlign: TextAlign.center,
                            style:TextStyle(
                              fontSize: 60,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),
                          ),
               ),
                  
                          Text(
                            '.-- . .-.. -.-. --- -- .\n',
                            style:TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w200,
                              color: Colors.white,
                              letterSpacing:5.0,
                            ),
                          ),
             
                         GestureDetector(
                            onTap: _username,
                            child: Text(
                            'User Name \n ..- ... . .-. \n -. .- -- . -.. \n\n',
                            textAlign: TextAlign.center,
                            style:TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w200,
                              color: Colors.white,
                              letterSpacing:5.0,
                            ),
                          )
                          ),
             
                         GestureDetector(
                            onTap: _swipeup,
                            child: Text(
                            '\n\n\nSwipe Up For Manual\n ... .-- .. .--. . \n ..- .--.  ..-. --- .-.\n  -- .- -. ..- .- .-..',
                            textAlign: TextAlign.center,
                            style:TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w200,
                            color: Colors.white,
                            letterSpacing:5.0,

                        )
                    )),
                    GestureDetector(
                            onTap: _swipedown,
                            child: Text(
                              
                            '\n\n\nSwipe Down For \n Morse Code Guide\n ... .-- .. .--. . \n ..- .--.  ..-. --- .-.\n  -- .- -. ..- .- .-..',
                            textAlign: TextAlign.center,
                            style:TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w200,
                            color: Colors.white,
                            letterSpacing:5.0,
                            

                        )
                    )),
                    ]  
                    )
      ),
                                         onSwipeUp: () {
                                              Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => Manual()),
                                            );
                                          _swipeup();
                                          setState(() {
                                              _swipeDirection = "Swipe Up";
                                          });
                                      },
                                       onSwipeDown: () {
                                        Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => MorseGuide()),
                                      );
                                      _swipedown();
                                        setState(() {
                                          _swipeDirection = "Swipe Down";
                                        });
                                      },
                                      swipeConfiguration: SwipeConfiguration(
                                      verticalSwipeMinVelocity: 100.0,
                                      verticalSwipeMinDisplacement: 50.0,
                                      verticalSwipeMaxWidthThreshold:100.0,
                                      horizontalSwipeMaxHeightThreshold: 50.0,
                                      horizontalSwipeMinDisplacement:50.0,
                                      horizontalSwipeMinVelocity: 200.0),
                    )
                    )
            )  
      );
    
      
                   
    
      
  }
  }
  