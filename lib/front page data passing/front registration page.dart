import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.darT';
import 'package:newwwww/front%20page%20data%20passing/front%20homepage.dart';
import 'package:newwwww/front%20page%20data%20passing/front%20loginpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

/*void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: regpage(),
  )));
}*/
class regpage extends StatefulWidget{
  @override
  State<regpage> createState() => _regpageState();
}

class _regpageState extends State<regpage> {
  bool showpass =true;
  final name_controller =   TextEditingController();
  final username_controller = TextEditingController();
  final password_controller = TextEditingController();

  late SharedPreferences logindata;
  @override
  void dispose(){
    name_controller.dispose();
    username_controller.dispose();
    password_controller.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.black87,),
    body:  SingleChildScrollView(child:Column(children: [Padding(
    padding: const EdgeInsets.only(top: 90),
      child: Center(
        child:Text(" Registration page",style: TextStyle(fontSize: 30,fontStyle: FontStyle.italic,color: Colors.black),),
      ),
    ),Padding(
          padding: const EdgeInsets.only(right: 30,left: 30,top: 30),
          child: TextFormField(obscureText:showpass ,
              controller: name_controller,
              obscuringCharacter: "*",
              decoration: InputDecoration(prefixIcon: Icon(Icons.drive_file_rename_outline),
                  suffixIcon: IconButton(onPressed: () {
                    setState(() {
                      if (showpass) {
                         showpass = false;
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
                  labelText: "name",
                  hintText: "name",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))),
          ),
          ),Padding(
            padding: const EdgeInsets.only(top: 20,left: 25,right: 25),
            child: TextFormField(obscureText: showpass,
    controller: username_controller,
    obscuringCharacter: "*",
    decoration: InputDecoration(prefixIcon: Icon(Icons.person),
    suffixIcon: IconButton(onPressed: (){
      setState(() {
        if (showpass) {
            showpass = false;
        }
        else{
            showpass =true;
        }
      });
    }, icon: Icon(showpass == true? Icons.visibility_off :Icons.visibility),),
    labelText: "username",
    hintText: "username",
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))),),
          ),
      Padding(
        padding: const EdgeInsets.only(top: 20,left: 25,right: 25),
        child: TextFormField(obscureText: showpass,
          obscuringCharacter: "*",
          controller: password_controller,
          decoration: InputDecoration(prefixIcon: Icon(Icons.password),
              suffixIcon: IconButton(onPressed: (){
                setState(() {
                  if (showpass) {
                    showpass = false;
                  }
                  else{
                    showpass =true;
                  }
                });
              }, icon: Icon(showpass == true? Icons.visibility_off :Icons.visibility),),
              labelText: "password",
              hintText: "password",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))),),
      ),Padding(
        padding: const EdgeInsets.all(20),
        child: ElevatedButton(onPressed: () async {

          logindata =await SharedPreferences.getInstance();
          String name     = name_controller.text;
          String username = username_controller.text;
          String password = password_controller.text;
          if (username!= '' && password != ''){
            logindata.setString('name', name);
            logindata.setString('username', username);
            logindata.setString('password', password);
            print(username);
            print(password);
            Navigator.push(context as BuildContext, MaterialPageRoute(builder: (context)=>frontloginpage()));
          }        }, child:Text("Login")),
      )
    ])
    ));
  }

}
