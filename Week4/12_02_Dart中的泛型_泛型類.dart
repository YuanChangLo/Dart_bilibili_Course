// 集合 List 泛型類的用法

// 案例：把下面類轉換成範型類，要求 MyList 裡面可以增加 int 類型的數據，也可以增加 String 類型的數據，還可以實現類型的校驗，但是每次調用增加的類型要統一

// List 的普通類
class MyList{
  List list=<int>[];
  void add(int value){
    this.list.add(value);
  }
  List getList(){
    return this.list;
  }
}

// List 的範型類
class MyList2<T>{
  List list=<T>[]; // 用T代表任意類型
  void add(T value){
    this.list.add(value);
  }
  List getList(){
    return this.list;
  }
}


main(){

// List 範型類
  MyList2 list06=new MyList2();
  list06.add('Roger');
  list06.add(18);
  list06.add(true);
  print(list06.getList());

// 實例化的時候指定範型類為特定類型，例如: String 類型
  MyList2 list07= MyList2<String>();
  list07.add("Roger");
  list07.add("ROGER");
  list07.add(true); // 輸出會有錯誤
  print(list07.getList());

// 配合一般的 List 類
  MyList list05=new MyList();
  list05.add(1);
  list05.add(2);
  print(list05.getList());

// 以下是 List 的複習 
  List list01=List.filled(2,"");
  list01[0]="Roger";
  list01[1]="ROGER";
  print(list01);

  List list02=new List.filled(2,""); // 調用 List 的時候就是實例化 List 的類
  list02[0]="Roger";
  list02[1]="ROGER";
  print(list02);

  List list03=new List<String>.filled(2,""); // 指定類型
  list03[0]="Roger";
  list03[1]="ROGER";
  print(list03);

  List list04=new List<int>.filled(2,0); // 指定int類型
  list04[0]=18;
  list04[1]=20;
  print(list04);

  // 所以 List 就算是一個泛型類
}