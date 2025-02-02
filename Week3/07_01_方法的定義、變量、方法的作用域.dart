/*
  內置方法/函數：

    Print();

  自定義方法：
    自定義方法的基本格式：

    返回類型 方法名稱 (參數1, 參數2, ...) {
      方法體
      return 返回值
    }
*/

// 全局的調用方法
void printInfo(){
  print('調用自定義的方法');
}

String printUserInfo(){
  return 'str';
}

List getList(){
  return [1,22,333];
}

void main(){  // ()內為傳入參數 {}內為方法體

  print('調用系統內置的方法');

  printInfo();

  // 局部的調用方法
  int getNum(){
    var myNum=123;
    return myNum;
  }

  var n=getNum();
  print(n);

  print(printUserInfo());

  print(getList());


  aaa() // 無法被調用

  void xxx(){
    aaa(){
      print('aaa');
    }
    aaa(); // 可以被調用
  }
}