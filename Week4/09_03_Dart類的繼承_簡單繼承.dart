/*
面向對象的三大特性：封裝、繼承、多態

Dart 中的類的繼承：
1. 子類使用 extends 關鍵詞來繼承父類
2. 子類會繼承父類裡面可見的屬性和方法，但是不會繼承構造函數
3. 子類能覆寫父類的方法 getter 和 setter 
*/

class Person{
  String name='ROGER'; // Person 的屬性
  num age=18; // Person 的屬性
  void printInfo(){ // Person 的方法
    print("${this.name} is ${this.age}");
  }
}

class Web extends Person{
}

main(){
  Web P=new Web();
  print(P.name); // 訪問父類的屬性
  P.printInfo(); // 訪問父類的方法



}