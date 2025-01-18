class Person{
  String name; // Person 的屬性
  num age; // Person 的屬性
  // 用 Person 構造函數讓 Name 跟 Age 可以動態給參數、動態調整，而不是一開始就寫死
  Person(this.name,this.age); // Person 的構造函數(Constructor)
  void printInfo(){ // Person 的方法
    print("${this.name} is ${this.age}");
  }
  work(){
    print("${this.name} is working");
  }
}

class Web extends Person{
  late String Sex;
  Web(String name,num age,String Sex):super(name,age){ // 用 Super 將直傳給父類的構造函數，讓他要有值
    this.Sex=Sex;
  }
  run(){
    print("${this.name} is running --- Sex is ${this.Sex} --- Age is ${this.age}");
  }
} 
main(){
  Person P=new Person('YC',19);
  P.printInfo();

  print("----------------------");
  Web P1=new Web('Lo',20,"Male"); // 但這邊就會需要傳參進去
  print(P1.name); // 訪問父類的屬性
  P1.printInfo(); // 訪問父類的方法
  P1.run();
}