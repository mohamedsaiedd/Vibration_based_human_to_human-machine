
import 'package:flutter/material.dart';
import 'package:MYO/login.dart';
import 'package:MYO/signUp.dart';
import 'package:vibration/vibration.dart';
import 'package:morse/morse.dart';

class MyAppBar extends StatefulWidget {
  MyAppBar({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyAppBarState createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {

void _iincrementCounter() {
    setState(() async {

      if (await Vibration.hasVibrator()) {
      Vibration.vibrate();
      }
      if (await Vibration.hasAmplitudeControl()) {
      Vibration.vibrate(amplitude: 128);
      }
      final String message = 'sign up';
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
  void _iiincrementCounter() {
    setState(() async {

      if (await Vibration.hasVibrator()) {
      Vibration.vibrate();
      }
      if (await Vibration.hasAmplitudeControl()) {
      Vibration.vibrate(amplitude: 128);
      }
      final String message = 'enjoy your life';
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
  
  void _incrementCounter() {
    setState(() async {

      if (await Vibration.hasVibrator()) {
      Vibration.vibrate();
      }
      if (await Vibration.hasAmplitudeControl()) {
      Vibration.vibrate(amplitude: 128);
      }
      final String message = 'sign in';
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
   

 
 Widget _myWidget(BuildContext context) {
      return Container(
        child: RichText(
          
           textAlign: TextAlign.center,
          text: TextSpan(
            
            // set the default style for the children TextSpans
            style: Theme.of(context).textTheme.body1.copyWith(fontSize: 30),
           
            children: [
              TextSpan(
                  text: 'MYO',
                  style: TextStyle(
                  letterSpacing:15.0,
                  
                  
                  color: Colors.blue[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  
                )
              ),
              TextSpan(
                  text: '''\n''',
                  style: TextStyle(
                  letterSpacing:15.0,
                  
                  color: Colors.blue[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 70,
                  
                )
              ),
              TextSpan(
                  text: '''Enjoy ''',
                  style: TextStyle(
                  color: Colors.blue[900],
                  fontWeight: FontWeight.bold,
                  letterSpacing:2.0,
                  fontSize: 20,
                  
                   
                )
                
              ),
              TextSpan(
                text: 'Your life \n . -. .--- --- -.-- \n  -.-- --- ..- .-.   .-.. .. ..-. .',
                style: TextStyle(
                  color: Colors.blue[700],
                  fontWeight: FontWeight.w300,
                  letterSpacing:2.0,
                   fontSize: 20,
                )
                
              ),
          
            ]
            
          )
         
        ),
        
        
          );
    }
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
                child : Center(
                  
                  child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
               Hero(
                    tag:'logo',
                    child: Container( 
                      child:
                      Image(image: AssetImage('images/logo.png')),
                      
                    ),
                    
                ),
            
              Text(
                    '',
                    
                    
              ),
              new GestureDetector(
                onTap: _iiincrementCounter,
                child:   _myWidget(context),
              ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0,50,0,10),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                            side: BorderSide(color: Colors.white,)
                    ),
                    onPressed: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                          
                        );
                        _incrementCounter();
                        
                      },
                  child: Text(
                    'SIGN IN \n ... .. --. -.  .. -. ',
                  textAlign: TextAlign.center,
                  ),
                  color: Colors.grey[300], 
                  textColor: Colors.blue[900],
                  
                  ),
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,0,0,0),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                          side: BorderSide(color: Colors.white,)
                  ),
                  onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
                      );
                      _iincrementCounter();
                    },
                  
                child: Text('SIGN UP \n ... .. --. -.  ..- .--. ',
                textAlign: TextAlign.center,),
                color: Colors.grey[300], 
                textColor: Colors.white,
                ),
                  ),  
                
                  
                  
            ]
            )
            )
            )
            );
}

}
