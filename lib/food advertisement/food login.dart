import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Main page.dart';

class secondlogin extends StatefulWidget {
  @override
  State<secondlogin> createState() => secondloginState();
}

class secondloginState extends State<secondlogin> {
  @override
  bool showpass = true;

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Center(
              child: Image(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1615719413546-198b25453f85?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8Zm9vZCUyMGRlbGl2ZXJ5fGVufDB8fDB8fHww"),
                height: 320,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30, left: 30, top: 30),
              child: TextFormField(
                obscureText: showpass,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (showpass) {
                            showpass = false;
                          } else {
                            showpass = true;
                          }
                        });
                      },
                      icon: Icon(showpass == true
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                    labelText: "Username",
                    hintText: "Username",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100))),
                validator: (uname) {
                  if (uname!.isEmpty ||
                      !uname.contains('@') ||
                      !uname.contains('.')) {
                    return "please enter valid username";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, right: 30, left: 30),
              child: TextFormField(
                obscureText: showpass,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (showpass) {
                            showpass = false;
                          } else {
                            showpass = true;
                          }
                        });
                      },
                      icon: Icon(showpass == true
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                    labelText: "Password",
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100))),
                validator: (password) {
                  if (password!.isEmpty || password.length < 6) {
                    return "please enter valid password";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => foodMain()));
                  },
                  child: Text("Login")),
            )
          ]),
        ));
  }
}
/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.darT';

class Secondlogin extends StatefulWidget{
  @override
  State<Secondlogin> createState() => _SecondloginState();
}

class _SecondloginState extends State<Secondlogin> {
  @override
  bool showpass = true;
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}*/
