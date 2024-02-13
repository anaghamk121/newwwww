import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.darT';
import 'package:newwwww/shared%20preferance/sharedprefhomepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
            home: sharedprefloginpage(),
          )));
}

class sharedprefloginpage extends StatefulWidget {
  @override
  State<sharedprefloginpage> createState() => _sharedprefloginpageState();
}

class _sharedprefloginpageState extends State<sharedprefloginpage> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool showpass = true;

  late SharedPreferences data;

  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  late bool newuser;

  void initState() {
    checkUser();
    super.initState();
  }

  void checkUser() async {
    data = await SharedPreferences.getInstance();
    newuser = (data.getBool("newuser") ?? true);
    if (newuser == false) 
    {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => sharedprefhomepage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Center(
              child: Image(
                image: AssetImage("images/cat.png"),
                height: 150,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30, left: 30, top: 30),
              child: TextFormField(
                controller: username,
                obscureText: showpass,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (showpass) {
                           // var showpass = false;
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
                controller: password,
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
                    String uname = username.text;
                    String pwd = password.text;
                    if (uname != '' && pwd != '') {
                      print("Login success");
                      data.setString("username", uname);
                      data.setBool("newuser",false);
                      print("uname");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => sharedprefhomepage()));
                    }
                  },
                  child: Text("Login")),
            )
          ]),
        ));
  }
}
