// Dart 中一個類實現多個接口

abstract class A{
  late String name;
  printA();
}

abstract class B{
  printB();
}

class C implements A, B{
  @override
  late String name;
  @override
  printA(){
    print('printA');
  }
  @override
  printB(){
    print('printB');
  }
}

void main(){
  C c = new  C();
  c.printA();
  c.printB();
}