import 'package:flutter/material.dart';
import 'package:MYO/manual.dart';
import 'package:MYO/welcome.dart';
import 'package:vibration/vibration.dart';
import 'package:morse/morse.dart';

class Login extends StatefulWidget {
 
  Login({Key key, this.title}) : super(key: key);
  
  final String title ;

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {


  void _incrementCounter() {
    setState(() async {

      if (await Vibration.hasVibrator()) {
      Vibration.vibrate();
      }
      if (await Vibration.hasAmplitudeControl()) {
      Vibration.vibrate(amplitude: 128);
      }
      final String message = 'Submit';
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
              SizedBox(
                
                width: 100.0,
                
                    child: Hero(
                      
                      tag:'logo',
                      child: Container( 
                        child:
                        Image(image: AssetImage('images/logo.png')),
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        color:Colors.white,
                        ),
                        
                      ),
                  ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: new TextFormField(
                  
                          decoration: InputDecoration(
                            filled: true, fillColor: Colors.white,
                            labelText: 'Username',
                            helperText: '',
                            hintText : 'Start With Capital Letter ',
                            
                             border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(10.0),
                              ),
                            ),
                          ),
                           
                        ),
              ),
              new TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Number',
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0),
                            ),
                          ),
                          filled: true, fillColor: Colors.white,
                        ),
                      ),        
              new Form(
               
                key: _formKey,
                child :
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,30,0,150),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(16.0),
                          side: BorderSide(color: Colors.blue[900],)
                  ),
              onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Welcome()),
                  );
                  _incrementCounter();
                },
              
              child: Text('Submit'),
              color: Colors.blue[900], 
              textColor: Colors.white,
              ),
                )
              ),  
              
              Form (
                child: _myWidget(context),
              ),
              
              ],)
                
        
      )
      );
  }
  }
  