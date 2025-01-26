/*
Null Safety 翻譯成中文的意思是空安全

late 關鍵字主要用於延遲初始化 
*/

class Person {
  late String name;
  late int age;
  // Person(this.name, this.age); // 用於初始化 name 和 Age

  void setName(String name, int age){
    this.name = name;
    this.age = age;
  }

  String getName(){
    return "${this.name} ---- ${this.age}";
  }
}


// 原本可以不用初始化就直接調用函式給值得，新版本現在要
void main(){
  Person p1= new Person(); 
  p1.setName("Roger", 20);
  print(p1.getName());
}