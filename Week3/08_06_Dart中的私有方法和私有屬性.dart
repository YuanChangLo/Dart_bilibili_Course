/*

Dart 和其他面向對象語言不一樣，Data 中沒有 Public / Private / Protected 這些訪問修飾符，
但是我們可以使用_把一個屬性或者方法定義成私有

*/

// class Animal{
//   // late String name; // 默認情況下是公有的
//   late String _name; // 加了 _ 會變成私有的，下面的 Print 還是能用，要讓這個真的變成私有、不能用，就要單獨抽離成一個文件當模組
//   late int age;
//   Animal(this._name,this.age);
//   void printInfo(){
//     print("${this._name}---${this.age}");
//   }
// }

import 'library/Animal.dart';

void main(){

  Animal a1=new Animal('Dog', 3);
  print(a1._name); // 默認情況下，Name 及 Age 都是公有的，無法訪問在模組中私有屬性的變數，為要讓這個可以被訪問就會需要去模組修改
  print(a1.getName()); // 用公有的方法來獲取私有的屬性
  a1.execRun(); // 間接地調用私有的方法
  print(a1.age);


}