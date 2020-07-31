import 'package:flutter/material.dart';
import 'package:MYO/camera.dart';
import 'package:MYO/manual.dart';


class AddContact extends StatefulWidget {
 
  AddContact({Key key, this.title}) : super(key: key);
  
  final String title ;

  @override
  _AddContactState createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
Widget _myWidget(BuildContext context) {
      return RichText(
        text: TextSpan(
          
          // set the default style for the children TextSpans
          style: Theme.of(context).textTheme.body1.copyWith(fontSize: 30),
          children: [
            TextSpan(
                text: 'Add',
                style: TextStyle(
                color: Colors.blue[700],
                fontWeight: FontWeight.bold,
              )
            ),
            TextSpan(
              text: 'Contact',
              style: TextStyle(
                color: Colors.blue[700],
                fontWeight: FontWeight.w100,
              )
            ),
        
          ]
          
        )
      );
    }
  


  // Get a specific camera from the list of available cameras.
  
  final _formKey = GlobalKey<FormState>();
  
    Widget build(BuildContext context) {
    return new Material(
      color : Colors.white,
      textStyle: TextStyle(color: Colors.white),
      child : Center(
       
                  child:Column(
          
              mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
              Form(
               child: _myWidget(context),
             ),
              new TextFormField(
                        decoration: InputDecoration(
                          filled: true, fillColor: Colors.blue[700],
                          labelText: 'Username',
                          helperText: '',
                          hintText : 'Start With Capital Letter ',
                          labelStyle:TextStyle(color:Colors.white),
                          
                           border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0),
                            ),
                          ),
                        ),
                         
                      ),
              new TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Number',
                           labelStyle:TextStyle(color:Colors.white),
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0),
                            ),
                          ),
                          filled: true, fillColor: Colors.blue[700],
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
                    
                    MaterialPageRoute(builder: (context) => TakePictureScreen(camera:null,)),
                  );
                },
              
              child: Text('Submit'),
              color: Colors.blue[900], 
              textColor: Colors.white,
              ),
                )
              ),  
                 
             
              
              ],)
                
        
      )
   
      );
  
  }
  }
  