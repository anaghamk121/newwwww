import 'package:flutter/cupertino.dart';
import 'package:flutter/material.darT';
import 'package:onboarding_screen/onboarding_screen.dart';

void main(){
  runApp(MaterialApp(home: screen(),title: "Flutter demo",
    theme: ThemeData(primarySwatch: Colors.teal),));
}
class screen extends StatelessWidget{

  final PageController _controller = PageController();
  final List< _SliderModel> myslides =[

    _SliderModel(
      imageAssetPath:Image.asset(
        "images/cat.png",
        scale:1,),
      title:'Developer Student Club',
      desc: 'discover people',
  minTitleFontSize: 10,
  descStyle: const TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w400,
  color: Colors.black, ),
  titleStyle: const TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w400,
  color: Colors.black,),),
    _SliderModel(
      imageAssetPath: Image.asset("images/cat sleep.png",),
      title: "Sleeping cat",
      desc: "Cat"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return OnBoardingScreen(label: Text("Get started"),
      key:Key('get_started'),

      controller: _controller,
    mySlides: myslides,
    slideIndex: 0,
    statusBarColor: Colors.blueGrey,
    indicators: Indicators.cool,
   skipPosition: SkipPosition.bottomRight,
    skipDecoration: BoxDecoration(color:
    Colors.lightBlueAccent,
    borderRadius: BorderRadius.circular(20.0),
    ),
      skipStyle: TextStyle(color: Colors.grey),
    pageIndicatorColorList: [Colors.grey,
    Colors.blue,
    Colors.green,
    Colors.indigo,
    Colors.amber],);
  }
}

class _SliderModel {
  _SliderModel({
    this.imageAssetPath,
    this.title ="title",
    this.desc = "title",
    this.miniDescFontSize= 12.0,
    this.minTitleFontSize=15.0,
    this.descStyle,
    this.titleStyle
  });
  final Image ? imageAssetPath;
  final String title;
  final TextStyle ? titleStyle;
  final double minTitleFontSize;
  final String desc;
  final TextStyle? descStyle;
  final double miniDescFontSize;

}




/*
import 'package:flutter/material.dart';
import 'package:onboarding_screen/onboarding_screen.dart';
import 'loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,  ),
      home: MyHomePage(),);}}
class MyHomePage extends StatelessWidget {
  final PageController _controller = PageController();
  final List<_SliderModel> mySlides = [
    _SliderModel(
      imageAssetPath: Image.asset(
        "images/img.png",
        scale: 1,),
      title: 'Developer Student Club',
      desc: 'discover people',
      minTitleFontSize: 10,
      descStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: Colors.black, ),
      titleStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: Colors.black, ),  ),
    _SliderModel(
      imageAssetPath: Image.asset("images/img.png"),
      title: 'Developer Student Club',
      desc: 'discover people',
    ),
    _SliderModel(
      imageAssetPath: Image.asset("images/img.png"),
      title: 'Developer Student Club',
      desc: 'discover people',
    ),
    _SliderModel(
      imageAssetPath: Image.asset("images/img.png"),
      title: 'Developer Student Club',
      desc: 'discover people',
    ),
    _SliderModel(
      imageAssetPath: Image.asset("images/img.png"),
      title: 'Developer Student Club',
      desc: 'discover people',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return OnBoardingScreen(
      label: const Text(
        'Get Started',
        key: Key('get_started'),
      ),

      /// This function works when you will complete `OnBoarding`
      function: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) =>Loginpage(),
          ),
        );
      },

      /// This [mySlides] must not be more than 5.
      mySlides: mySlides,
      controller: _controller,
      slideIndex: 0,
      statusBarColor: Colors.white,
      indicators: Indicators.cool,
      skipPosition: SkipPosition.bottomRight,
      skipDecoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20.0),
      ),
      skipStyle: TextStyle(color: Colors.white),

      pageIndicatorColorList: [
        Colors.yellow,
        Colors.green,
        Colors.red,
        Colors.yellow,
        Colors.blue
      ],
    );
  }
}

class _SliderModel {
  const _SliderModel({
    this.imageAssetPath,
    this.title = "title",
    this.desc = "title",
    this.miniDescFontSize = 12.0,
    this.minTitleFontSize = 15.0,
    this.descStyle,
    this.titleStyle,
  });

  final Image? imageAssetPath;
  final String title;
  final TextStyle? titleStyle;
  final double minTitleFontSize;
  final String desc;
  final TextStyle? descStyle;
  final double miniDescFontSize;
}

*/
