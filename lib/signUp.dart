//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
//import 'package:second/messages.dart';
//import 'package:second/manual.dart';
import 'package:MYO/welcome.dart';
//import 'dart:async';


    



class SignUp extends StatefulWidget {
 
  SignUp({Key key, this.title}) : super(key: key);
  
  final String title ;

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {


  
   Widget _myWidget(BuildContext context) {
      return RichText(
        textAlign: TextAlign.center,
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
              text: 'Your life \n',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w100,
              )
            ),
          TextSpan(
              text: 'Please Complete To Create Your Account',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.w100,
                letterSpacing:3.0,
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
              new TextFormField(
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
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                         // onChanged: (value) => email = value,
                          decoration: InputDecoration(
                            filled: true, fillColor: Colors.white,
                            labelText: 'E-mail',
                            helperText: '',
                            
                            
                             border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(10.0),
                              ),
                            ),
                          ),
                           
                        ),
           
                        TextFormField(
                          autocorrect: false,
                         // onChanged: (value) => password = value,
                          obscureText:true ,
                          decoration: InputDecoration(
                            filled: true, fillColor: Colors.white,
                            labelText: 'Password',
                            helperText: '',
                           
                            
                             border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(10.0),
                              ),
                            ),
                          ),
                           
                        ),       
                // new Form(
                 
                //   key: _formKey,
                //   child :
                // //   Padding(
                // //     padding: const EdgeInsets.fromLTRB(0,30,0,70),
                // //     child: RaisedButton(
                // //       shape: RoundedRectangleBorder(
                // //             borderRadius: new BorderRadius.circular(16.0),
                // //             side: BorderSide(color: Colors.blue[900],)
                // //     ),
                
                // // child: Text('Submit'),
                // // color: Colors.blue[900], 
                // // textColor: Colors.white,
               
                // // ),
                // //   )
                // ),
              new Form(
               
                key: _formKey,
                child :
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,30,0,50),
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
                },
              
              child: Text('Submit'),
              color: Colors.blue[900], 
              textColor: Colors.white,
              ),
                )
              ),  
                   SizedBox(
                  width: 100.0,
                    
                ),
                Form (
                  child: _myWidget(context),
                ),
                
             
                  
          
      
  
              
              ],)
                
        
      )
      );
  }
  }
  