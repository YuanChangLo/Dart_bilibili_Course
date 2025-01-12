/*
// Method 1.
class Person{
  String name='Roger';
  int age=31;
// 默認構造函數
  Person(){
    print('這是構造函數裡面的內容，這個方法在實例化的時候觸發');
  }
  void printInfo(){
    print("${this.name}---${this.age}");
  }
}
*/


/*
// Method 2. 可以實例化多次，因為一開始沒有給值，但這個好像是以前方法， person 無法被初始化
class Person{
  String name;
  int age;
  Person(String name,int age){
    this.name=name;
    this.age=age;
    print('這是構造函數裡面的內容，這個方法在實例化的時候觸發');
  }
  void printInfo(){
    print("${this.name}---${this.age}");
  }
}
*/ 



// Method 3. 可以實例化多次，因為一開始沒有給值，跟 method 2 一樣作用，但是可以執行
class Person{
  String name;
  int age;
  // 默認構造函數的簡寫
  Person(this.name,this.age);
  void printInfo(){
    print("${this.name}---${this.age}");
  }
}

void main(){
  // Person p1=new Person();
  // p1.printInfo();

  // Person p2=new Person('Roger',20);
  // p2.printInfo();

  Person p3=new Person('Roger',20);
  p3.printInfo();

  Person p4=new Person('Roger2',40);
  p4.printInfo();

}