/*
Dart 中的對象操作符

  ? 條件運算符 (了解)
  as 類型轉換
  is 類型判斷
  .. 級連操作 (連綴)
*/ 

class Person{
  late String name;
  late num age;
  Person(this.name, this.age);
  void printInfo(){
    print("${this.name} is ${this.age}");
  }
}
main (){
  Person? p; // 宣告為可空類型
  p?.printInfo(); // 因為 p 是 null，所以這行什麼也不做，不會報錯

  Person p2=new Person('Andy', 5);
  p2?.printInfo();

  Person p3=new Person('Blob', 10);
  if(p3 is Person){
    p3.name='Chris';
  }
  p3.printInfo();
  print(p3 is Object);

  var p4;
  p4='';
  p4=new Person('David', 15);
  p4.printInfo();
  (p4 as Person).printInfo();

  Person p5=new Person('Eric', 20);
  p5.printInfo();
  p5..name='Frank'
    ..age=25
    ..printInfo();
}