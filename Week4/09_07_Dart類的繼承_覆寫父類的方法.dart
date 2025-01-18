class Person{
  String name; 
  num age; 
  Person(this.name,this.age); 
  void printInfo(){ 
    print("${this.name} is ${this.age}");
  }
  work(){
    print("${this.name} is working");
  }
}

class Web extends Person{
  Web(String name, num age):super(name,age);
  
  run(){
    print('RUN');
    super.work(); //自類調用父類的方法
  }
  // 複寫父類的方法
  @override // 可寫可不寫，建議寫
  void printInfo(){
    print("Name is ${this.name}, Age is ${this.age}");
  }
  @override
  void work(){
    print("${this.name} is working.yaya!");
  } 
  
}

main(){
  Web P=new Web('LO',18);
  P.printInfo();
}