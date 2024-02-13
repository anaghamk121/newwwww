import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.darT';
import 'package:newwwww/front%20page%20data%20passing/front%20homepage.dart';
import 'package:newwwww/front%20page%20data%20passing/front%20registration%20page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: frontloginpage() ,
  )));
}
class frontloginpage extends  StatefulWidget{
  @override
  State<frontloginpage> createState() => _frontloginpageState();
}

class _frontloginpageState extends State<frontloginpage> {
  bool showpass =true;
  final username_controller = TextEditingController();
  final password_controller = TextEditingController();

  late SharedPreferences logindata;

  late bool newuser;

  late String uname;
  late String pswd;
  late String name;

  @override
  void initState(){
    check_if_alredy_login();
    getvalue();
  }
  void getvalue() async {
    logindata =await SharedPreferences.getInstance();
    setState(() {
      name = logindata.getString('name')!;
      uname = logindata.getString('username')!;
      pswd = logindata.getString('password')!;
    });
  }
  void check_if_alredy_login() async {
    logindata = await SharedPreferences.getInstance();
    newuser =(logindata.getBool('newuser')??true);

    if (newuser == false){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>fronthomepage()));
    }
  }
  void dispose() {
    username_controller.dispose();
    password_controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.white,),
        body: SingleChildScrollView(child:Column(children: [Padding(
          padding: const EdgeInsets.only(top: 120),
          child: Center(
           child:Text(" Login page",style: TextStyle(fontSize: 40,fontStyle: FontStyle.italic,color: Colors.black),),
          ),
        ),Padding(
          padding: const EdgeInsets.only(right: 30,left: 30,top: 30),
          child: TextFormField(obscureText:showpass ,
            obscuringCharacter: "*",
            controller: username_controller,
            decoration: InputDecoration(prefixIcon: Icon(Icons.person),
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
                labelText: "Username",
                hintText: "Username",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))),
          ),),
          Padding(padding: EdgeInsets.only(top:20,right: 30,left: 30),child: TextFormField(
            obscureText: showpass,
            obscuringCharacter: "*",
            controller: password_controller,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.password),
                suffixIcon: IconButton(onPressed: () {
                  setState(() {
                    if (showpass) {
                      showpass = false;
                    }
                    else {
                      showpass = true;}});},
                  icon: Icon(
                      showpass == true ? Icons.visibility_off : Icons
                          .visibility),
                ),
                labelText: "Password",
                hintText: "Password",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))
            ),
          ),),Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(onPressed: (){
    String username = username_controller.text;
    String password = password_controller.text;
    if (username != '' && password != '' && username == uname && password==pswd ){
    print("Successfull");
    logindata.setBool('newuser', false);
    Navigator.push(context, MaterialPageRoute(builder: (context)=>fronthomepage()));
    }else {
    return null;
    }
            },child:Text("Login"),),
          ),TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>regpage()));

          }, child:Text("create a new user"))
        ]),
        ));
  }
}