import 'package:flutter/cupertino.dart';
import 'package:flutter/material.darT';
import 'package:newwwww/shared%20preferance/loginpage.dart';
import 'package:shared_preferences/shared_preferences.dart';
class sharedprefhomepage extends StatefulWidget {
  @override
  State<sharedprefhomepage> createState() => _sharedprefhomepageState();
}

class _sharedprefhomepageState extends State<sharedprefhomepage> {
  late SharedPreferences data;
  late String username;

  @override
  void initState() {
    fetchname();
    super.initState();
  }

  void fetchname() async {
    data = await SharedPreferences.getInstance();
    setState(() {
      username = data.getString("username")!;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white),
      body: Column(
        children: [
          Container(
              height: 100,
              child: Center(
                child: Text(
                  "Homepage",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              )),
          ElevatedButton(onPressed: () {
            data .setBool("newuser",true);
            Navigator.push(context,MaterialPageRoute(builder: (context)=>sharedprefloginpage()));
          }, child: Text("Logout"))
        ],
      ),
    );
  }
}
