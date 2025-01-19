void main(){

  // 1. Number 與 String 類型之間的轉換

    // String 類型轉換成 Number 類型，要用parse

    String str='123';
    var myNum=int.parse(str);
    print(myNum is int);

    String str1='123.1';
    var myNum1=double.parse(str1);
    print(myNum1 is double);

    // Double 用於整數跟浮點數都適用，推薦使用

    // late String price='';
    // var myNum2=double.parse(price);
    // print(myNum2 is double);

    // try 的用法去測試值得類型
    String price1='';
    var myNum3=double.tryParse(price1);
    print(myNum3 is double);


    // try & catch 去測試值得類型
    String price2='10';
    try{
      var myNum4=double.parse(price2);
      print(myNum4);
      print(myNum4 is double);
    }catch(err){
      print(0);
    }


    // Number 類型轉換成 String 類型 toString()

    var Num=12;
    var str2=Num.toString();
    print(str2 is String);


  // 2. 其他類型轉換成 Booleans 類型

    // isEmpty: 判斷字符串類型是否為空值

    var str3='xxx';
    if (str3.isEmpty){
      print('str3 為空值');
    }else{
      print('str3 不為空值');
    }

    var myNum5=123;
    if (myNum5==0){
      print('myNum5 為0');
    }else{
      print('myNum5 非0');
    }

    var myNum6;
    if (myNum6==0){
      print('myNum6 為0');
    }else{
      print('myNum6 非0');
    }

    var myNum7;
    if (myNum7==null){
      print('myNum7 為空');
    }else{
      print('myNum5 非空');
    }

    var myNum8=0/0;
    print(myNum8);
    if (myNum8.isNaN){
      print('myNum8 為NaN');
    }else{
      print('myNum8 非NaN');
    }

// Question: 為啥最後這個類型用判斷的方式，就是轉換成 bool？

}