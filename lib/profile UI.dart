import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
            home: profileui(),
          )));
}

class profileui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 340),
              child: Icon(
                Icons.arrow_back,
                color: Colors.blueGrey,
              ),
            ),
            Icon(
              Icons.menu,
              color: Colors.blueGrey,
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 90, right: 20, top: 20),
                    child: Center(
                      child: Image(
                        image: AssetImage("images/anagha.jpg"),
                        height: 250,
                        width: 200,
                      ),
                    ),
                  ),
                ],
              ),Column(children: [
       Center(
         child: Row(children: [
           Padding(
             padding: EdgeInsets.only(left: 40),
             child: Image(height: 100, width: 100,image: NetworkImage("https://images.hindustantimes.com/"
                 "tech/img/2023/09/21/960x540/fb_1695273515215_1695273522698.jpg"),),
           ),
           Padding(
             padding: EdgeInsets.only(right:5),
             child: Image(height:50,width:50,image: NetworkImage("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAKEAAAChCAMAAACY"
                 "jy+EAAAAb1BMVEX///+3AAC0AAD/+fnEVlaxAADdpaX78/P46ur++/vw2NjBOTn67+/qw8P04uL89vbHX1/LamrksbHPc3PYkJC6GR"
                 "nkt7fdnZ3GUFDryMi6Hh67MzO8KCi7Ly/YlJTRe3vARkbu0NDThIS8ExPBPz+PLWLdAAAFsElEQVR4nO2c63qrKhCG41Q8h2hM1Bg"
                 "Tq+b+r3GTpu3uITCAoN374fu12rVC3jXIMDMMbjZOTk5OTk5OTk5OTk7/Q71kNKnqvrm00+RNxy71D/WJ0jBeG+yhaMvYPEIIAHgPs"
                 "T+xn9t8DE7ZynQxrf3z9C/ad7Hft2kerAcZJ8GNWe4p3BdMAs0+WQVwm3co3octL8V2abyobiXxPiDbIFqQL7uelfges325LsUY72+qeO+Qab1bAnBIiRbfXaStrDOG5aRnwHczgm93XcdVO4fvwRhYBAzHuXxvjPY8T+KbAPS8iy3ALWdzU5YtIwaeIUAPaht8ca/vY34RHiwAhr0pA94JKwuEhUFAD8zHY2FuborZxmL+MYxNTrFHSvPJgVnA3jjfJjA6xRYAtwb5GKD5KaamdpK7YDTOx5axQUBiAXCjFM3AQ9y/vloArKQBWdbppXnBlF/efvj9L2xsdi+trO26okpoFO6YwogOQdH+NKYVC8rNMZCipr8/m9T512jITkAzTBJ83njieJBwKOHDl1qKuBrUhNCNwjAg6ru3xdPubQBuKnQzgRLN3JK6yIvaToIXviImhGMls0PsQls5coAB5isXBzPEhOSwSIlDoL34KbSamMvpIjQh2FmcKjoJTUjWB9yUIhPa8b9qojcRoIVUQ1mioAYufwAwFhWRpmFtPKZMZEIbcZ6yBM4QXsO16e4SVEGIjaqLskL+SobXP7BMWOjKj/6lClcvKtIiDPjrpMGPbbalr6K816jJ8vMTPB/a9arnVSxVqBWPqwRpPEGj5VqnBACNWhROO+5QKfZZkScVIU5KLiLhekOCemskrOQjgspONfAJ0WG0a3nQKMTs/G85ok+0frVRpShx5T1LkKM73ox6aCq/oLl7HozohjKDkMj7RW6WJ5E+zSAE+QryhTuGXULUlX2KvyvjCdScuvxRmvD43yWUCGzmELbzCS3bsJMmXOk5VFgpa63lXJqQ7w/xWsMy/pC/p+CHXnMI5WstBy6hjxY15+x68uWqdWIbifj9U/zKnMX4kOnJqQxHlE+IPiq6MTZ7hG7y0Rflu+wb9tlMn7CQL7eIcj10JrjhL0qoEGMLWi9wj6CeL38MrVJ5FuS8EjWHE6fm0InJO5Vkb8t/EKXayp7WZ3aJuDv1pnI+E535hI1+7SsRAUKhNJagSDyjfihsmlActxbUYBu9ehpTxq+2sHHVSrt8nz2nji1qflKc5E2cWjgLEB5zKR/DCaZZ9zyFCg9bz6qH5APf32ieScXC3iKF6PVdL+LxNM71DuKjTPVKsThGIcqny9yo+CH5NO9TsXBA5QNwBFDrNBjpBlKa6BgBhLPOxZBItFbu/+1R2sVGWB+tZksC1lIFvmTUPqCdRRe9uzWUm9h/IEIgEY6EI9pjqb7u3oX3pUGObi9Vg3c+dbp9MSE29L1tqRBNdXzyJZpUZ/S47yXCeSBFxXmKkkrqwhcU2sHSJsSb5+7fAM24/fUldN9f5Jp8FRL5J1aQzIkYSjruB0ppFFGaVEHeCfphfwDO6+0Ub6bfIQljmo7tfeIVsj3w57WPZYYuHvGllOE9UyLXq6stA+1Z+nUYKcByNiAalcySmSZLo333PwA7+XqcSBlSzdAH9Ey1Z0WixG8G4HQyBMgWNBIq6slo8xM9WrCi2e6s5GwYEYxfzaRmlwt45u+OZiadDtxstOGHo7HdhTRm/OAvBYbWC4zWuuEH7C6DFF9ns5c7mn9NnSj2oCnrNM+McLF/nSCq9a8YAiktLZHvoqXeKxMA/MUauYdS3Y5A/CVvO7zQQo0R4LZduo07qn3ZlxMApP0qjfrZafTwtJOlpn61yPp4qnjoXztP8J6l4znfR2u3mA/7a36Dr6+qen9Zlef39XbJFwMJ9HaX9ZCn7eM"
                 "W59S+ltcqoZl+xcjJycnJycnJycnJyekP6x9EclHyGlyRxgAAAABJRU5ErkJggg==")),
           ),
           Image(height:70,width:70,image: NetworkImage("https://static.vecteezy.com/system/resources/thumbnails/"
               "018/930/745/small/twitter-logo-twitter-icon-transparent-free-free-png.png")),
           Image(height:60,width:60,image: NetworkImage("https://cdn.pixabay.com/photo/2017/08/22/11/56/linked"
               "-in-2668700_960_720.png"))],),),
                ListTile(title: Center(child: Text("Anagha",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
                  subtitle: Center(child: Text("@anaghaaa")),
                ), ]),Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Center(child: Text("Mobile App Developer and Open source enthusiastic",style: TextStyle(fontSize: 20),)),),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(child:
                Row(children: [Padding(padding: EdgeInsets.only(left:50), child: Icon(Icons.privacy_tip_outlined),),
                  Text("Privacy",),Padding(
                    padding: EdgeInsets.only(left: 80),
                    child: Icon(Icons.arrow_forward_ios_outlined),
                  ),],),height: 40,width: 240,
                  decoration: BoxDecoration(border: Border.all(color: Colors.blueGrey),
                      borderRadius: BorderRadius.all(Radius.circular(100),)),),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(child:
                Row(children: [Padding(padding: EdgeInsets.only(left: 40),child: Icon(Icons.history),),
                  Text("Purchase History"),Padding(
                    padding:  EdgeInsets.only(left: 30),
                    child: Icon(Icons.arrow_forward_ios_outlined),
                  )],),height: 40,width: 240,
                  decoration: BoxDecoration(border: Border.all(color: Colors.blueGrey),
                      borderRadius: BorderRadius.all(Radius.circular(100))),),
              ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Container(child:
                    Row(children: [Padding(padding: EdgeInsets.only(left: 40),child: Icon(Icons.help_outline),),
                      Text("Hep and support"),Padding(padding: EdgeInsets.only(left: 30),child:Icon(Icons.arrow_forward_ios_outlined))],),height: 40,width: 240,
                    decoration: BoxDecoration(border: Border.all(color: Colors.blueGrey),
                        borderRadius: BorderRadius.all(Radius.circular(100))),),),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(child:
                Row(children: [Padding(padding: EdgeInsets.only(left: 50),child: Icon(Icons.settings),),
                  Text("Settings"),Padding(padding: EdgeInsets.only(left: 70),child:Icon(Icons.arrow_forward_ios_outlined))],),height: 40,width: 240,
                  decoration:BoxDecoration(border: Border.all(color: Colors.blueGrey),
                  borderRadius: BorderRadius.all(Radius.circular(100))) ,),),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Container(child:
                  Row(children: [Padding(padding: EdgeInsets.only(left: 50),child: Icon(Icons.insert_invitation),),
                    Text("Invite a friend"),Padding(padding: EdgeInsets.only(left: 30),child:Icon(Icons.arrow_forward_ios_outlined))],),height: 40,width: 240,
                    decoration: BoxDecoration(border: Border.all(color: Colors.blueGrey),
                    borderRadius: BorderRadius.all(Radius.circular(100))),),
                )

              ])))
    );}
}
