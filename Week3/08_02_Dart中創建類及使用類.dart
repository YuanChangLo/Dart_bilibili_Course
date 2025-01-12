// Dart 是一門使用類和單繼承的面向對象語言，所有的對象都是類的實例，並且所有的類都是 object 的子類。

import 'dart:collection';

class Person{

  String name='Roger';
  int age=31;
  
  void getInfo(){
    print('$name is $age years old');
    print("${this.name}---${this.age}");
  }
  void setInfo(int age){
    this.age=age;
  }
}

void main(){
  
// 實例化
  var p1=new Person();
  print(p1.name);
  print(p1.age);
  p1.getInfo();
  

  Person p2=new Person();
  print(p2.name);
  print(p2.age);
  p2.getInfo();
  
  p2.setInfo(18);
  p2.getInfo();
}