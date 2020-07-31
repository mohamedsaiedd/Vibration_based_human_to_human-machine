import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

 class Internet extends StatefulWidget {
 
  Internet({Key key, this.title}) : super(key: key);
  
  final String title ;

  @override
  _InternetState createState() => _InternetState();
}

class _InternetState extends State<Internet> {

  Widget build(BuildContext context) {
       _launchURL() async {
          const url = 'https://flutter.dev';
          if (await canLaunch(url)) {
            await launch(url);
          } else {
            throw 'Could not launch $url';
          }
        }
              return Material(
        child: Center(
           child:Column(
            
                mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                Text(
                      'Google',
                    style: TextStyle(
                      color: Colors.blue[900],
                      fontSize: 80,
                      fontWeight: FontWeight.w700,
                      letterSpacing:3.0,
              )
                ),
                 TextFormField(
                          decoration: InputDecoration(
                            filled: true, fillColor: Colors.white,
                            helperText: '',
                            hintText : 'Search',
                             border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(10.0),
                              ),
                            ),
                          ),
                           
                        ),
                RaisedButton(
                  
                  onPressed: _launchURL,
                  child: Text("Search"),
                  color: Colors.blue[900], 
                  textColor: Colors.white,
                ),
      
    
              ]
              )
  )
              );
              }
  }
    

    
 
    
