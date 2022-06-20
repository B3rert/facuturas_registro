import 'package:flutter/cupertino.dart';

class InputHelper extends ChangeNotifier {
  bool clearInput = false;

  void clearInputs() {
    clearInput = true;
    notifyListeners();
  }
}
