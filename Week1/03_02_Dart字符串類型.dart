void main(){
    // var 會自動判斷後面的類型是字串還是數字
    // var str='你好';
    // print(str);
    // var myNum=1127;
    // print(myNum);

    // Dart裡面有類型校驗 
    // String 定義字符串
    // String str="try";
    // print(str);

    // int 定義數字
    // int Num=1127;
    // print(Num);

    // 變量有區分大小寫
    // var age=20;
    // var Age=30;
    // print(age);
    // print(Age);
    
    // 變量是可以被覆蓋的
    // var str='Test 1234';
    // str='Test 5678';
    // print(str);

    // int myNum=8282;
    // myNum=1127;
    // print(myNum);

    // 常量是不能被改變的
    // const PI=3.14;
    // PI=2.451; // 錯誤的
    // print(PI);

    // final PI=3.14;
    // PI=2.451; // 錯誤的
    // print(PI);

    // final 可以開始不賦值，只賦值一次
    final a=new DateTime.now();
    print(a);


    //1. 定義字符串的幾種方式
    
    var str01='this is a string01';
    var str02='this is a string02';
    print(str01);
    print(str02);

    var str='''
    可以印多行的字符串
    第二行
    ''';
    print(str);

    //2. 字符串的拼接
    String str1='你好';

    String str2='Dart';

    print("$str1 $str2");
    print(str1+str2);
    print(str1+" "+str2);
} 
