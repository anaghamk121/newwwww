import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homepage1.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext) =>
          MaterialApp(
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
            home: Loginpage_withvalid(),
          )));
}

class Loginpage_withvalid extends StatefulWidget {
  @override
  State<Loginpage_withvalid> createState() => _LoginpagevalideState();
}

class _LoginpagevalideState extends State<Loginpage_withvalid> {
  GlobalKey<FormState>  formkey=GlobalKey();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Login_with valid"),),
        body: SingleChildScrollView(
          child: Center(
            child: Form(
              key: formkey,
              child: Column(
                  children: [
                    SizedBox(height: 50,),
                    Text("Loginpage",
                      style: TextStyle(fontSize: 40, color: Colors.red),),
                    SizedBox(height:40,),
                    Padding(
                      padding: const EdgeInsets.only(top: 50, right: 6),

                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          labelText: "username",
                          hintText: "username",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100)),
                        ),
                        validator: (uname){
                          if(uname!.isEmpty||!uname.contains('@')||!uname.contains('.')){
                            return"please enter valid username";
                          }
                          else{
                            return null;
                          }
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                          obscuringCharacter: "*",
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.password),
                            suffixIcon: IconButton(onPressed: () {
                              setState(() {
                                if (showpass) {
                                 // var showpass = false;
                                }
                                else {
                                    showpass = true;
                                }
                              }
                              );
                            },
                              icon: Icon(
                                  showpass == true ? Icons.visibility_off : Icons
                                      .visibility),
                            ),
                            labelText: "password",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)
                            )
                          ),
                          validator:(password) {
                          if(password!.isEmpty|| password.length<6){
                                      return "please enter valid password";
                                         }
                          else{
                            return null;
                          }
                          },
                      ),
                    ),
                    ElevatedButton(onPressed: () {
                      final valid=formkey.currentState!.validate();
                      if (valid){
                        Navigator.push(context,MaterialPageRoute(builder:(context)=>listhomepage ()));
                          }
                      else{
                        return null;
                          }
                          },
                      child: Text("Login"),
                    ),
                    TextButton(onPressed: () {},
                        child:Text("create a new user")
                    )
                  ],
              ),
            ),
          ),
        )
    );
  }
}

