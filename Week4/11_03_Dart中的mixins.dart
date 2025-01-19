class Person{
  String name;
  int age;
  Person(this.name,this.age);
  printInfo(){
    print('this is person class, ${this.name}, ${this.age}');
  }
}

/*
當 A 類去繼承 Person 類的時候，就不能被使用 mixins 了
class A extends Person{
  String info='this is A';
  void printA(){
    print('A');
  }
} 
*/

mixin A{ 
  String info='this is A';
  void printA(){
    print('A');
  }
  void run(){
    print('ARUN');
  }
}

mixin B{
//  B(){}; 沒辦法使用構造函數
  void printB(){
    print('B');
  }
  void run(){
    print('BRUN');
  }
}


class C extends Person with A,B{ // 是可繼承 Person，然後在 mixins A 與 B 的，這時候上面的 Person 因為是普通類，所以可以使用構造函數
  C(String name,int age):super(name,age); // 就可以傳入參數，使用 Person class 的 PrintInfo 來印出參數
}

void main(){
  var c= new C('ROger',18);  
  c.printA();
  c.printB();
  print(c.info);
  c.printInfo();
  c.run(); // 使用 C Class 多個 mixins，且 A, B Class 具有同樣的方法時，順序很重要，會優先調用最右邊 Class 的方法，因為右邊的會把前面的替換掉。 return 為 BRUN
}