class Person{
  late String name;
  late num age;
  Person(this.name, this.age);
  Person.xxx(this.name, this.age); // 匿名構造函數
  void printInfo(){
    print("${this.name} is ${this.age}");
  }
}

class Web extends Person{
  late String Sex;
  Web(String name,num age,String Sex):super.xxx(name,age){
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
  Web P1=new Web('Lo',20,"Male");
  print(P1.name); 
  P1.printInfo(); 
  P1.run();
}