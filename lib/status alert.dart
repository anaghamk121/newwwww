import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ), // ThemeData
      home: const MyHomePage(),
    );
  }
}// MaterialApp
class MyHomePage extends StatefulWidget{
  const MyHomePage({Key? key}): super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void showAlert(QuickAlertType quickAlertType){
    QuickAlert.show(context: context,
        text: "The Transation Is successful",
        type: QuickAlertType.success
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              showAlert(QuickAlertType.success);
            }, child: Text("SUCCESS"))

          ],
        ),
      ),
    );
  }
  Card buildButton({
    required onTap,
    required title,
    required text,
    required leadingIcon,
  }){
    return Card(
      shape: const StadiumBorder(),
      margin: const EdgeInsets.symmetric(
          horizontal: 20
      ),
      clipBehavior: Clip.antiAlias,
      elevation: 1,

      child: ListTile(
        onTap: onTap,
        leading: leadingIcon,
        title: Text(title ?? ""),
        subtitle: Text(text ?? ""),
        trailing: const Icon( Icons.keyboard_arrow_right_rounded,
        ),
      ),//
    );
  }
}