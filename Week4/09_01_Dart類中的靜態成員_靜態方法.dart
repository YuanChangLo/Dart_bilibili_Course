/* 
Dart 中的靜態成員:
1. 使用 Static 關鍵字來實現類級別的變量和函數
2. 靜態方法不能訪問非靜態成員，非靜態方法可以訪問靜態成員
*/

/*
// 1.
class Person{
  String name = "張三";
  void show(){
    print(name);
  }
}

class Person2{
  static String name = "李四";
  static void show(){
    print(name);
  }
}


void main(){
  var p=new Person();
  p.show();  

  print (Person2.name);
  Person2.show();

}
*/

// 2.
class Person3 {
  static String name = "李四";
  int age=20;
  
  static show(){
    print(name);
  }
  void printInfo(){ // 非靜態方法可以訪問靜態成員以及非靜態成員
    print(name); // 訪問靜態屬性
    print(this.age); // 訪問非靜態屬性
    show(); // 訪問靜態方法
  }
  static void printUserInfo(){ // 靜態方法不能訪問非靜態成員，非靜態方法可以訪問靜態成員
    print(name); // 訪問靜態屬性
    show(); // 訪問靜態方法
//    print(this.age); // 靜態方法不能訪問非靜態的屬性
  }
}

void main(){
  Person3 p=new Person3();
  p.printInfo();

  Person3.printUserInfo();
}