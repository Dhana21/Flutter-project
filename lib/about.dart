import 'package:smart_emi/secondscreen.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(About());
}

class About extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return Scaffold(
      drawer: DrawerCodeonly(),
      appBar: AppBar(
        backgroundColor: Colors.orange[800],
        title: Text("About and support"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children:<Widget>[
            Text(" In this appliaction you  can add your EMI details",style:TextStyle(fontSize: 20.0)),
            Container(child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("To reset password",style:TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
            )),
            Text("1.Go to Settings>change Password>reset your Password",style: TextStyle(fontSize:20.0)),
            Container(child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("To add customer details",style:TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
            )),
            Text("2.Go to Customer details>+>Add details",style: TextStyle(fontSize:20.0)),
            Container(child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("To add Due details",style:TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
            )),
            Text("3.Go to Due Details>select month>Add details by clicking +",style: TextStyle(fontSize:20.0)),
            Container(child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("To Add Remainder",style:TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
            )),
            Text("4.Go to Remainder>Set time>Add description for your remainder",style: TextStyle(fontSize:20.0)),
            Container(child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Was it useful?",style:TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),

            )),
            Row(
  
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                Center(
                  child: RaisedButton(
                    child: Text(
                      "Yes",
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
                                title: Text("Thanks for your response!",style: TextStyle(fontSize:20.0),),
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
                 RaisedButton(
                    child: Text(
                      "No",
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
                                title: Text("Thanks for your response!",style: TextStyle(fontSize:20.0),),
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
              ]
            )
          ]
        ),
      ),
    );
  }
}