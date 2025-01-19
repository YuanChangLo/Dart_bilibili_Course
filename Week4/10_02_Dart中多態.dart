/*
Dart 中的多態：

1. 允許將子類類型的指針賦值給父類類型的指針，同一個函數調用會有不同的執行效果
2. 子類的實例賦值給父類的引用
3. 多態就是父類定義一個方法不去實現，讓繼承他的子類去實現，每個子類有不同的表現
*/

abstract class Animal{
  eat(); // 父類定義了一個方法，但不去實現它，而是會由子類去實現它
}

class Dog extends Animal{
  @override
  eat(){ // Dog 跟 Cat 子類定義的方法，表現出來的都不一樣，這就是類的多態
    print('Dog is eating shit');
  }
  run(){
    print('RUN!');
  }
}

class Cat extends Animal{
  @override
  eat(){
    print('Cat is eating shit');
  }
  run(){
    print('RUN!');
  }
}

void main(){
  Dog dog=new Dog();
  dog.eat();
  dog.run();

  Cat cat=new Cat();
  cat.eat();
  cat.run();

  Animal DOG=new Dog(); // 將子類賦值給父類
//  DOG.run(); // 無法被調用
  DOG.eat(); // 可以被調用

  Animal CAT=new Cat();
//  CAT.run(); // CAT 裡面是沒有 run 方法的，這時候是沒辦法再去調用子類的方法
  CAT.eat(); // 這時候只能調用父類方法，然後用子類去實現它
}