import 'package:flutter/material.dart';

import 'home.dart';

class MyForm extends StatefulWidget{
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState()=> _MyFormState();
}

class _MyFormState extends State<MyForm>{
  final _formKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  <Widget>[
                  SizedBox(
                    width: 200,
                    height: 200,
                    child: Image.network('http://assets.stickpng.com/images/5ead539d1c42dd0004bbf8c7.png'),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        icon: Icon(Icons.person),
                        hintText: 'Enter Your Name',
                        labelText:'Name',
                      ),
                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        icon: Icon(Icons.phone),
                        hintText: 'Enter a Phone Number',
                        labelText:'phone',
                      ),
                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        icon: Icon(Icons.calendar_today),
                        hintText: 'Enter your data of birth',
                        labelText:'Data Of Birth',
                      ),
                    ),

                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child:  Padding(
                      padding: const EdgeInsets.all(8),
                      child:  RaisedButton(
                        color: Colors.red, onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => const Home(),
                        ));
                      },
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          child: const Text('Register',style: TextStyle(color:Colors.white,
                          fontWeight: FontWeight.bold)),
                        ),
                      ),

                    )
                  )




                ],
              ),
            )
          ],
        ),

      ),
    );
  }
}