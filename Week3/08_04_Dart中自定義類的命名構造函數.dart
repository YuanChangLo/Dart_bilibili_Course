// Dart 裡面，構造函數可以寫多個

class Person{
// 如果確保屬性一定會在後續被賦值，但不想在構造函數中立即初始化，可以使用 late 關鍵字，不然無法被初始化
  late String name;
  late int age;
// 默認構造函數的簡寫
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

void main(){
  // var d=new DateTime.now(); // 實例化 DataTime 調用它的命名構造函數
  // print(d);

  // Person p1=new Person.now();

  Person p2=new Person.setInfo('Roger', 31);
  p2.printInfo();
}
