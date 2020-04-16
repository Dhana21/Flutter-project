import 'package:smart_emi/secondscreen.dart';
import 'package:flutter/material.dart';

void main(){
runApp(Detail());
}

class Detail extends StatelessWidget{
  Widget build(BuildContext context)
  {
    return Scaffold(
      drawer: DrawerCodeonly(),
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("Customer details"),
        backgroundColor: Colors.orange[800],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SingleChildScrollView(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  cursorColor: Colors.orange,

                  decoration: InputDecoration(
                    enabledBorder:OutlineInputBorder(
                      borderRadius:BorderRadius.all(Radius.circular(30)) ,
                      borderSide: BorderSide(color:Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:BorderSide(color:Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      prefixIcon: Icon(Icons.account_circle,color: Colors.orange[800],),
                      hintText: "Customer name",
                      filled: true,
                      fillColor: Colors.grey[200]
                  ),
                ),
              ),
            
            SingleChildScrollView(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                cursorColor: Colors.orange,
                decoration: InputDecoration(
                  enabledBorder:OutlineInputBorder(
                    borderRadius:BorderRadius.all(Radius.circular(30)) ,
                    borderSide: BorderSide(color:Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:BorderSide(color:Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    prefixIcon: Icon(Icons.shopping_basket,color: Colors.orange[800],),
                    hintText: "Product",
                    filled: true,
                    fillColor: Colors.grey[200]
                ),
              ),
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                cursorColor: Colors.orange,
                decoration: InputDecoration(
                  enabledBorder:OutlineInputBorder(
                    borderRadius:BorderRadius.all(Radius.circular(30)) ,
                    borderSide: BorderSide(color:Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:BorderSide(color:Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    prefixIcon: Icon(Icons.contact_phone,color: Colors.orange[800],),
                    hintText: "Contact number",
                    filled: true,
                    fillColor: Colors.grey[200]
                ),
                
              ),
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                cursorColor: Colors.orange,
                decoration: InputDecoration(
                  enabledBorder:OutlineInputBorder(
                    borderRadius:BorderRadius.all(Radius.circular(30)) ,
                    borderSide: BorderSide(color:Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:BorderSide(color:Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    prefixIcon: Icon(Icons.attach_money,color: Colors.orange[800],),
                    hintText: "Amount",
                    filled: true,
                    fillColor: Colors.grey[200]
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Center(
                  child: RaisedButton(
                    child: Text(
                      "Add detail",
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
                                title: Text("customer detail added",style: TextStyle(fontSize:20.0),),
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