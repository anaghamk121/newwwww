import 'package:flutter/material.dart';
import 'package:newwwww/sqflite%20new/admin%20homepage.dart';
import 'package:newwwww/sqflite%20new/buttonpage.dart';
import 'package:newwwww/sqflite%20new/helper%20class%202.dart';
import 'package:newwwww/sqflite%20new/newreg.dart';
import 'package:newwwww/sqflite%20new/user%20homepage.dart';

class newlogin extends StatefulWidget {
  @override
  State<newlogin> createState() => _Login_FormState();
}

class _Login_FormState extends State<newlogin> {
  var formkey = GlobalKey<FormState>();

  final TextEditingController conemail = TextEditingController();

  final TextEditingController conpass = TextEditingController();

  void logincheck(String email, String password) async {
    if (email == 'admin@gmail.com' && password == '123456') {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => adminhome()));
    } else {
      var data = await SQLHelper2.Checklogin(email, password);
      if (data.isNotEmpty) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => userhomepage(
                      data: data,
                    )));
        print('Login Success');
      } else if (data.isEmpty) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => splash()));
        print('Login faild');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    bool hidepass = true;
    return Scaffold(
      appBar: AppBar(
        title: const Text("LOGIN PAGE"),
      ),
      body: Form(
        key: formkey,
        child: ListView(
          children: [
            const Center(
                child: Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Text(
                "Login Page",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            )),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                obscureText: hidepass,
                obscuringCharacter: "*",
                controller: conemail,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.drive_file_rename_outline),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (hidepass) {
                            hidepass = false;
                          } else {
                            hidepass = true;
                          }
                        });
                      },
                      icon: Icon(hidepass == true
                          ? Icons.visibility
                          : Icons.visibility_off),
                    ),
                    labelText: "Email",
                    hintText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                validator: (text) {
                  if (text!.isEmpty ||
                      !text.contains('@') ||
                      !text.contains(".")) {
                    return "Enter valid Email!!!";
                  }
                },
                textInputAction: TextInputAction.next,
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  controller: conpass,
                  obscureText: hidepass,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (hidepass) {
                            hidepass = false;
                          } else
                            hidepass = true;
                        });
                      },
                      icon: Icon(hidepass == true
                          ? Icons.visibility
                          : Icons.visibility_off),
                    ),
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  validator: (pass) {
                    if (pass!.isEmpty || pass.length < 6) {
                      return "Password length should be greater than 6";
                    }
                  },
                  textInputAction: TextInputAction.next,
                )),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: MaterialButton(
                color: Colors.pink,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                onPressed: () {
                  final valid = formkey.currentState!.validate();

                  if (valid) {
                    logincheck(conemail.text, conpass.text);
                  } else {}
                },
                child: const Text("LOGIN"),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => newreg()));
                },
                child: const Text('Not a User? Register Here!!!'))
          ],
        ),
      ),
    );
  }
}
