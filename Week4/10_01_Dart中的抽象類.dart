/*
Dart 中的抽象類：Dart抽象類主要用於定義標準，子類可以繼承抽象類，也可以實現抽象類接口 (Dart 沒有接口，用抽象類來定義)

1. 抽象類通過 abstract 關鍵字來定義
2. Dart中的抽象方法不能用 abstract 聲明，Dart 中沒有方法體的方法，我們稱之為抽象方法
3. 如果子類繼承抽象類，必須得實現裡面的抽象方法
4. 如果把抽象類當作接口實現的話，必須得實現抽象類裡面定義的所有屬性和方法
5. 抽象類不能被實例化，只有繼承它的子類可以

extends 抽象類和 implements 的區別

1. 如果要復用抽象類裡面的方法，並且要用抽象方法約束子類的話，我們就用 extends 繼承抽象類
2. 如果只是把抽象類當作標準的話，我們就用Implements 實現抽象類

案例：定義一個 animal 類，要求它的子類必須包含 eat 方法
*/

abstract class Animal{
  eat(); // 抽象方法，同時也是要求所有子類都必須要有抽象方法
  run(); // 抽象方法沒有方法體，只定義了方法的名稱和參數
  printInfo(){ // 子類可以選擇性地 override 普通方法，但這不是必須的，printInfo() 是普通方法，已經在抽象類 Animal 中實現，因此子類不需要再實現它
    print('我是一個抽象類裡面的普通方法');
  }
}

class Dog extends Animal{
  @override
  eat(){
    print('Dog is eating shit');
  }
  @override
  run(){
    print('Dog is running');
  }
}

class Cat extends Animal{
  @override
  eat(){
    print('Cat is eating shit');
  }
  @override
  run(){
    print('Cat is running');
  }
}

void main(){
  Dog dog=new Dog();
  dog.eat();
  dog.run();

  Cat cat=new Cat();
  cat.eat();
  cat.run();

//  Animal aninmal=new Animal(); // 抽象類沒辦法直接被實例化
  cat.printInfo(); // 但是繼承的子類就可以將普通方法實例化
}