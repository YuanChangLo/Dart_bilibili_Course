// 調用方法傳參

main(){

// 1. 定義一個方法，求 1 到這個數的所有樹的和 60 1+2+3+...＋60

  int sumNum(int n){ // 建議要寫上返回值類型，如果知道的話
    var sum=0;
    for(var i=1;i<=n;i++){
      sum+=i;
    }
    return sum;
  }

  var n1=sumNum(5);
  print(n1);
  var n2=sumNum(100);
  print(n2);

// 2. 定義一個方法然後打印用戶信息

  String printUserInfo(String username, int age){
    return "姓名：$username --- 年齡：$age";
  }

  print(printUserInfo('Roger', 31));

// 3. 定義一個帶可選參數的方法

  String printUserInfoTwo(String username, [int? age]){ // dart 的 int 定義時不能 default 是 Null
    if (age!=null) {
      return "姓名：$username --- 年齡：$age";
    }
    return "姓名：$username --- 年齡：保密";
  }

  print(printUserInfoTwo('Roger', 31));
  print(printUserInfoTwo('ROGER', ));

// 4. 定義一個帶默認參數的方法

  String printUserInfoThree(String username, [int? age, String sex='男']){
    if (age!=null) {
      return "姓名：$username --- 年齡：$age --- 性別：$sex";
    }
    return "姓名：$username --- 年齡：保密 --- 性別：$sex";
  }

  print(printUserInfoThree('ROGER', ));
  print(printUserInfoThree('Amy',30,'女'));

// 5. 定義一個命名參數的方法

  String printUserInfoFour(String username,{int? age, String sex='男'}){
    if (age!=null) {
      return "姓名：$username --- 年齡：$age --- 性別：$sex";
    }
    return "姓名：$username --- 年齡：保密 --- 性別：$sex";
  }

  print(printUserInfoFour('Rooo',age:20,sex:'3'));

// 6. 實現一個把方法當作參數的方法

  // 一個 function
  fn1(){
    print('fn1');
  }
  // 一個 function
  fn2(fn){
    fn();
  }
  // 調用 fn2 這個方法，把 fn1 這個方法當作參數傳入
  fn2(fn1);


  // 另一種寫法

  var fn=(){
    print('匿名的方法');
  };
  fn();

}