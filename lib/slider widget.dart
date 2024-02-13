import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.darT';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: sliderwidget(),
  )));
}
class sliderwidget extends StatefulWidget{
  @override
  State<sliderwidget> createState() => _sliderwidgetState();
}
class _sliderwidgetState extends State<sliderwidget> {
  RangeValues _rangeValues =RangeValues(3, 9);
  @override
  Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(title: Text("Range slider example"),),
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [Text('Range Values: ${_rangeValues.start} ${_rangeValues.end}'),
      RangeSlider(values: _rangeValues, onChanged: (newRange){
        setState(() {_rangeValues =newRange;});},
        min: 0.0,max: 10.0,divisions: 20,labels: RangeLabels('${_rangeValues.start}','${_rangeValues.end}'),
      )],),),);}}
