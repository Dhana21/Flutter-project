
import 'package:smart_emi/Description.dart';
import 'package:smart_emi/secondscreen.dart';
import 'package:flutter/material.dart';



void main() => runApp(Mypicker());

class Mypicker extends StatefulWidget {
  @override
  _MypickerState createState() => _MypickerState();
}

class _MypickerState extends State<Mypicker> {
  TimeOfDay _time = TimeOfDay.now();
  TimeOfDay picked;

  Future<Null> selectTime(BuildContext context) async {
    _time = await showTimePicker(
      context: context,
      initialTime: _time,
    );
    setState(() {
      _time = picked;
      return showDialog(
                            context:context,
                            barrierDismissible: false,
                            builder: (BuildContext context)
                            {
                              return AlertDialog(
                                title: Text("Your Remainder is Added",style: TextStyle(fontSize:20.0),),
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
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      drawer: DrawerCodeonly(),
      appBar: AppBar(
        backgroundColor: Colors.orange[800],
        title: Text("Set Remainder"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(130.0),
        child: Center(
          child: Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.alarm,
                  color: Colors.orange[800],
                ),
                onPressed: () {
                  selectTime(context);
                },
              ),
              Center(
                child: RaisedButton(
                  child: Text(
                    "Set  Description",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  color: Colors.orange[800],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  onPressed: () {
                     Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Desc())
                                        );
                  }
                ),
              )
            ],
          )),
        ),
      ),
    );
    
  }
  
}
