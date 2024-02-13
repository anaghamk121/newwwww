import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>
      MaterialApp(
        debugShowCheckedModeBanner:false,
        useInheritedMediaQuery:true,
        home: datatable(),)));
}
class datatable extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(child: DataTable(columns: [
        DataColumn(label: Text("Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15))),
        DataColumn(label: Text("age",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold))),
        DataColumn(label: Text("Course",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15))),
        DataColumn(label: Text("Salary",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold))),
      ],
        rows: [
          DataRow(cells: [
            DataCell(Text("anu")),
      DataCell(Text("25")),
      DataCell(Text("flutter")),
      DataCell(Text("25000"))
        ]),
    ]),
    )
    );
  }

}