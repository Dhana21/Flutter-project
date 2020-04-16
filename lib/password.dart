import 'package:smart_emi/secondscreen.dart';
import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';
void main(){
runApp(Password());
}

class Password extends StatefulWidget{
  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  bool passwordVisible=false;
  
  Widget build(BuildContext context)
  {
    return Scaffold(
      drawer: DrawerCodeonly(),
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("Reset Password"),
        backgroundColor: Colors.orange[800],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                child:PasswordField(
                 
                  hintText: "New password",
                  color: Colors.orange,
                  hasFloatingPlaceholder: true,
                  pattern: r'.*[@#$.*].*',
                  border: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(2),
                    borderSide:BorderSide(width: 2,color: Colors.orange)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(10),
                    borderSide:BorderSide(width: 2,color: Colors.orange)
                  ),
                  errorMessage: 'must contain special character',
                )
              ),
              ),
            
            SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child:PasswordField(
                  hintText: "confirm password",
                  color: Colors.orange,
                  hasFloatingPlaceholder: true,
                  pattern: r'.*[@#$.*].*',
                  border: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(2),
                    borderSide:BorderSide(width: 2,color: Colors.orange)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(10),
                    borderSide:BorderSide(width: 2,color: Colors.orange)
                  ),
                  errorMessage: 'must contain special character',
                  
                )
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Center(
                  child: RaisedButton(
                    child: Text(
                      "Reset password",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    color: Colors.orange[800],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                        onPressed: ()
                        {
                          return showDialog(
                            context:context,
                            barrierDismissible: false,
                            builder: (BuildContext context)
                            {
                              return AlertDialog(
                                title: Text("Password changed",style: TextStyle(fontSize:20.0),),
                                shape: RoundedRectangleBorder(
                                  borderRadius:BorderRadius.circular(10),

                                ),
                                
                                actions: <Widget>[
                                  FlatButton(
                                    onPressed:()=>Navigator.of(context).pop(),
                                    child: Text("Okay",style: TextStyle(color:Colors.orange[800],fontSize: 20.0,fontWeight: FontWeight.bold),),
                                  )
                                ],
                                
                              );
                            }
                          );
                        },
                  
                ),
               
              ),
              
            )
          ],
          
        ),
        padding: EdgeInsets.all(32),
      ),
    );
    
  }
}