import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>
      MaterialApp(useInheritedMediaQuery:true,
        debugShowCheckedModeBanner:false,
        home: gridview(),)));
}
class gridview extends StatelessWidget{
  var Iconss=[Icons.home,Icons.email,Icons.alarm,Icons.wallet,Icons.backup,Icons.book,Icons.camera,Icons.person,
    Icons.print,Icons.phone,Icons.notes,Icons.music_note];
  var name=["Home","Email","Alarm","Wallet","Backup","Book","Camera","Person","Print","Phone","Notes","Music"];
  var colors=[Colors.lime,Colors.blueGrey,Colors.orangeAccent,Colors.pink,Colors.white24,Colors.greenAccent,
  Colors.purpleAccent,Colors.brown,Colors.green,Colors.pink,Colors.lightBlue,Colors.amberAccent];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid view"),),
      body: GridView.count(crossAxisCount: 3,children:List.generate(12, (index) {
        return Card(color: colors[index],
        child: Column(
          children: [SizedBox(height: 20,),
          Text(name[index]),
            SizedBox(height: 20,),
            Icon(Iconss[index]),
          ],
        )
        );
      }
      ),
      ),
        );

  }
}