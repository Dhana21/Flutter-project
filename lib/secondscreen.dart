import 'package:smart_emi/Due.dart';
import 'package:smart_emi/about.dart';
import 'package:smart_emi/customerdetail.dart';
import 'package:smart_emi/remainder.dart';
import 'package:smart_emi/settings.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SecondPage(),
    ));

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MyDrawerApp(),
    );
  }
}

class MyDrawerApp extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[800],
        title:Text("Smart EMI",style:TextStyle(color: Colors.white)),
         ),
         body: Container(
           color: Colors.grey.shade200,
           child:Center(
             child:Image.asset("assets/mi.jpg",fit: BoxFit.none,),
         ),
         ),
      drawer: DrawerCodeonly()
    );
  }
}


class DrawerCodeonly extends StatelessWidget{
  Widget build(BuildContext context)
  {
    
        return Drawer(
           child:ListView(
             padding: EdgeInsets.zero,
              children:<Widget>[
                DrawerHeader(
                  child:Row(
                    children:<Widget>[
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.white, 
                        backgroundImage:ExactAssetImage("assets/ava.jpg") 
                    ),
                    SizedBox(
                      width:20,
                    ),
                    Text("Alexander",style: TextStyle(color:Colors.white,fontSize: 22,fontWeight: FontWeight.bold),
                    )
                ],
              ),
              decoration:BoxDecoration(color:Colors.orange[800]) ,
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Icon(Icons.assignment_ind),
                    SizedBox(width:20,),
                    Text("Customer Details",style: TextStyle(color:Colors.black,fontSize:22,fontWeight: FontWeight.bold),),
                  ],
                ),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Customer())
                  );
                },
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Icon(Icons.assignment_late),
                    SizedBox(width:20,),
                    Text("Due Details",style: TextStyle(color:Colors.black,fontSize:22,fontWeight: FontWeight.bold),),
                  ],
                ),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Duedetails())
                  );
                },
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Icon(Icons.calendar_today),
                    SizedBox(width:20,),
                    Text("Remainder",style: TextStyle(color:Colors.black,fontSize:22,fontWeight: FontWeight.bold),),
                  ],
                ),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Remainder())
                  );
                },
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Icon(Icons.settings),
                    SizedBox(width:20,),
                    Text("Settings",style: TextStyle(color:Colors.black,fontSize:22,fontWeight: FontWeight.bold),),
                  ],
                ),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Settings())
                  );
                },
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Icon(Icons.help),
                    SizedBox(width:20,),
                    Text("Help & support",style: TextStyle(color:Colors.black,fontSize:22,fontWeight: FontWeight.bold),),
                  ],
                ),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>About())
                  );
                },
              ),
          ]
        )
    );
  }
}