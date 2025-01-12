// 越來越多類，可維護性就變很差，所以可以抽離成單獨的文件

/*
class Person{
  late String name;
  late int age;
  Person(this.name,this.age);
  Person.now(){
    print('我是命名構造函數');
  }
  Person.setInfo(String name,int age){
    this.name=name;
    this.age=age;
  }
  void printInfo(){
    print("${this.name}---${this.age}");
  }
}

class Animal{
  late String name;
  late int age;
  Animal(this.name,this.age);
  void printInfo(){
    print("${this.name}---${this.age}");
  }
}
*/

// 可以直接使用 Import 來匯入模組

import 'library/Person.dart';
import 'library/Animal.dart';

void main(){
  Person p1=new Person.setInfo('Roger', 31);
  p1.printInfo();
}