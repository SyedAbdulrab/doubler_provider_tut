import 'package:flutter/material.dart';

class NumbersListProvider extends ChangeNotifier{

   List<int> numbers = [1,2,3];
  void double(){
    numbers.add(numbers.last *2);
    notifyListeners();
  }
}