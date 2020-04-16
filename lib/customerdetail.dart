import 'package:smart_emi/detail.dart';
import 'package:smart_emi/secondscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Customer());
}

class Customer extends StatefulWidget {
  @override
  _CustomerState createState() => _CustomerState();
}

class _CustomerState extends State<Customer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerCodeonly(),
      appBar: AppBar(
        title: Text("Add Customer details"),
        backgroundColor: Colors.orange[800],
      ),
      body: Container(
        child: Center(
          child:Text("Press + to add customer details",style:TextStyle(fontSize:30.0))
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.orange[800],
        onPressed: (){
            Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Detail())
                                        );
        },
        ),
        
    );
  }
}