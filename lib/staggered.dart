import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(){
  runApp(DevicePreview(builder:( BuildContext context)=>
      MaterialApp(
        useInheritedMediaQuery:true,
        debugShowCheckedModeBanner:false,
        home: staggeredgrid(),
      ) ));
}
class staggeredgrid extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(child: StaggeredGrid.count(crossAxisCount:4,children: [
        StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount:2, child: Container(color:Colors.blueGrey,
            )
        ),
        StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount:2, child:Container(color: Colors.orangeAccent,
        )
        ),
        StaggeredGridTile.count(crossAxisCellCount: 3, mainAxisCellCount: 2, child: Container(color:Colors.green,
        )
        ),
        StaggeredGridTile.count(crossAxisCellCount: 4, mainAxisCellCount: 2, child: Container(color: Colors.brown,
        )
        ),
        StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount:1, child: Container(color: Colors.pinkAccent,
        )
        ),
        StaggeredGridTile.count(crossAxisCellCount: 3, mainAxisCellCount:2, child: Container(color: Colors.blueAccent,
        )
        )
      ],
      ),
    )
    );
  }
}