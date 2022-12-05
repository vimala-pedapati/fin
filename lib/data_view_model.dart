import 'package:fininfocom_task/person_model.dart';
import 'package:flutter/material.dart';

class DataViewModel with ChangeNotifier{
  List<Person> _listOfPersons = [];
 final List<Person> _staticList = [
    Person(age:  10, name: 'Alex C',city: "Canada"),
    Person(age: 20,  name: 'Jack',city: "United Kingdom"),
    Person(age: 50, name: 'John G',city: "Washington"),
    Person(age: 34, name: 'Bala T',city: "Bangalore"),
    Person(age: 22, name: 'Antony',city: "Hyderabad"),
    Person(age: 15, name: 'Graham',city: "Japan")
  ];
  List<Person> get  listOfPersons => _listOfPersons;

  DataViewModel(){
     _listOfPersons = _staticList;
  }

  sortByAge(){
    _listOfPersons = bubbleSort(_staticList);
    notifyListeners();
  }
  sortByName(){
    _staticList.sort((a, b) => a.name.compareTo(b.name));
    _listOfPersons = _staticList;
    notifyListeners();
  }
  sortByCity(){
    _staticList.sort((a, b) => a.city.compareTo(b.city));
    _listOfPersons = _staticList;
    notifyListeners();
  }
  bubbleSort(List<Person> array) {
    int lengthOfArray = array.length;
    for (int i = 0; i < lengthOfArray - 1; i++) {
      for (int j = 0; j < lengthOfArray - i - 1; j++) {
        if (array[j].age > array[j + 1].age) {
          // Swapping using temporary variable
          var temp = array[j];
          array[j]= array[j + 1];
          array[j + 1] = temp;
        }
      }
    }
    return (array);
  }

}