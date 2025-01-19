/*
mixins 的中文意思是混入，就是在類中混入其他功能，在 Dart 中可以使用 mixins 實現類似多繼承的功能

因為 mixins 使用的條件，隨著 Dart 版本一直在變，這裡講的是 Dart2.x 中使用 mixins 的條件：
1. 作為 mixins 的類只能繼承自 Ojbect，不能繼承其他類
2. 作為 mixins 的類不能有構造函數
3. 一個類可以 mixins 多個 mixins 類
4. mixins 絕不是繼承，也不是接口，而是一種全新的特性
*/

mixin A{ // 這裡要從 Class 改成 mixin，這樣下面的 With 才能夠 work，或者是改成用抽象類
  String info='this is A';
  void printA(){
    print('A');
  }
}

mixin B{
  void printB(){
    print('B');
  }
}

class C with A,B{ // C 就具有了 A跟B所有的方法
}

void main(){
  var c= new C();  
  c.printA();
  c.printB();
  print(c.info);
}

