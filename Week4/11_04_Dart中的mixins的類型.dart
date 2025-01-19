/*
mixins 的實例類型是什麼？
很簡單，mixins 的類型就是其超類的子類行
*/

mixin A{
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

class C with A,B{ 
}

void main(){
  var c= new C();  
  print(c is C);
  print(c is A);
  print(c is B);
}