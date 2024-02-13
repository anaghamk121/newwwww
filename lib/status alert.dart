import 'package:flutter/cupertino.dart';
import 'package:flutter/material.darT';
import 'package:quickalert/quickalert.dart';

void main(){
  runApp(MaterialApp(home: statusalert(),
  theme: ThemeData(primarySwatch: Colors.blueGrey),));
}
class statusalert extends StatefulWidget{
  statusalert({Key? Key}):super(key: Key);
  @override
  State<statusalert> createState() => _statusalertState();
}

class _statusalertState extends State<statusalert> {
  void showAlert(QuickAlertType quickAlertType){
    QuickAlert.show(context: context,
        text: "Transaction is successfull",
        type: QuickAlertType.success);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Status alert"),),
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [ElevatedButton(onPressed: () {
          showAlert(QuickAlertType.success);
        }, child: Text("Success"),
        )
        ],),),);

  }
}
Card buildButton({
  required onTap,
  required title,
  required text,
  required leadingIcon,

}){
  return Card(
    shape: StadiumBorder(),
    margin: EdgeInsets.symmetric(
      horizontal: 20

    ),
    clipBehavior: Clip.antiAlias,
    elevation: 1,

    child: ListTile(
      onTap: onTap,
      leading: leadingIcon,
      title: Text(title??""),
      subtitle: Text(text??""),
      trailing: Icon(Icons.keyboard_arrow_right_outlined),
    ),
  );
}



















