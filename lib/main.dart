import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:myflutapp/signUp.dart.dart';

import 'home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello world Flutter Application',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title: Text(title, style:const TextStyle(fontWeight:FontWeight.bold,color:Colors.white),),
        leading: const Icon(Icons.icecream),
        actions: const [Icon(Icons.star)],
      ),
      body: Padding(
          padding:  const EdgeInsets.all(20.0),
        child: Column(
          children : <Widget>[
            SizedBox(
              width: 200,
              height: 200,
              child: Image.network('https://scontent-iad3-1.xx.fbcdn.net/v/t39.30808-6/271152437_4517210088326282_5345610355013129660_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeEjo00XZflOlxLhmajnyCv6Q3bK3y8WIORDdsrfLxYg5FUK-0jegyN_igJKcc6zA1_RIn2Ajf7r-JMsHHN15EaR&_nc_ohc=VKUHE80wu94AX-1phmd&_nc_ht=scontent-iad3-1.xx&oh=00_AT933bU2_f-oHQ1vUCWYVgAGABS7aZEP-91EX6fWo1YqYg&oe=626991F0'),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                // keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email Address",
                  border: OutlineInputBorder(),

                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                  colors: [Colors.red,Colors.blueAccent]
                )
                ),
                child: TextButton(
                  child :const Text("Login",
                 style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(
                      builder: (context)=>const Home(),
                    ));
                  },

                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(10.0),
              child: RichText(
                text:  TextSpan(
                  text:'Dont Have an Acount?!',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Sign up',
                      style: const TextStyle(
                        color: Colors.red,fontSize: 15,
                      ),
                      recognizer :  TapGestureRecognizer()
                        ..onTap=(){
                        Navigator.push(context,MaterialPageRoute(
                          builder: (context)=>const MyForm(),
                        ));
                        }
                    )
                  ]
                ),
              ),
            )

          ],
        ),
      )
      );

  }
}