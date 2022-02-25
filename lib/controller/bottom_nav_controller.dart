import 'package:get/get.dart';
import 'package:netflix_clone/services/getting.dart';

class BottomController extends GetxController{
  var currentInd = 0.obs;
  // Future<Welcome>? upCominglist;

  changeIndex(int index){
    currentInd.value = index;
    print(currentInd.value);
  }
  @override
  void onInit() {
    upcomigFetching();
  //  upCominglist = GettngApi().upcomigFetching();
    // TODO: implement onInit
    super.onInit();
  }
}