import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import '../model/postmodel.dart';
import '../sevices/diosevices.dart';
// link controller l aan kodukkuka,
// controller is used for state management
class HomeController extends GetxController { //getx controller aan use cheyunneth
  RxList<PostModel> posts = RxList(); // post enna listlek aan data store aavendeth,rxlist observable aan,
  RxBool isLoading = true.obs;
  RxBool isInternetConnected = true.obs;// net connection cheking ,observe cheyan
  RxBool isListScrollToDown = false.obs;// scroll down cheyan,floating click cheythal true otherwise false

  var url = "https://jsonplaceholder.typicode.com/posts"; // url ne create cheythu
  var itemController = ItemScrollController(); // scroll controller working

  isInternetConnect() async { // net conection check cheyan
    isInternetConnected.value = await InternetConnectionChecker().hasConnection; // phone le connection nokan
  }

  getPosts() async {
    isInternetConnect();
    isLoading.value = true; // first loading aaki veknm,nnit check cheynm

    var response = await DioService().getData(url); // return cheynna response,dioservice- service class,
    if (response.statusCode == 200) {//response.data ne elements n corresponding aayt vilikunn
      response.data.forEach((element) {
        posts.add(PostModel.fromJson(element)); //model class le variable anusarich add avm
      });
      isLoading.value = false;
    }
  } // normal dio working n ith mathi


  // scrolling upward or downward chech cheyan
  scrollListDownWard() {
    itemController.scrollTo(
      index: posts.length - 5,   //last 5 data ne downl kanikan
      duration: const Duration(seconds: 2),
      curve: Curves.bounceOut,
    );
    isListScrollToDown.value = true;
  }

  scrollListUpWard() {
    itemController.scrollTo(
        index: 0,
        duration: const Duration(seconds: 2),
        curve: Curves.easeInCirc);
    isListScrollToDown.value = false;
  }
  @override
  void onInit() {
    getPosts();
    isInternetConnect();
    super.onInit();
  }
}