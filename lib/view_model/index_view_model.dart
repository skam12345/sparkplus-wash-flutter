import 'package:flutter/material.dart';

class IndexViewModel with ChangeNotifier {
  // Set Instance Location
  int _click = 0;
  // get Instance Location
  int get click => _click;
  // Constructor
  IndexViewModel() {

  }
  // Setting Instance Definition Location
  set click(int click) {
    _click = click;
    notifyListeners();
  }
  // Real Proccess Function Location
  showNext(BuildContext context) {
    click = click + 1;
    if(click == 5) {
      click = 0;
      Navigator.pushNamed(context, '/sparkplus/recognize');
    }
  }
}