/*
Null Safety 翻譯成中文的意思是空安全

Null Safety 可以幫助開發者避免一些日常開發中很難被發現的錯誤，並且額外的好處是可以改善性能。

Flutter 2.2.0 (2021年5月19日發布) 之後的版本都要要求使用 null safety。

? 可空類型

! 類型斷言
*/

void main(args){
// 1. 可空類型
  // int a=123;
  // print(a);

  // String username = "Roger";
  // print(username);

  // List<String> l1=['dog','cat','human'];
  // print(l1);

  // int b=123; // 表示為非空的 int 類型
  // b=null; // b 是 int 不能為空

  // String username1 = "Roger";
  // username1=null; // 非空類型

  String? username2 = "Roger"; // String? 表示 username 是一個可空類型
  username2=null; 
  print(username2);

  int? c=123; // int? 表示 c 是一個可空類型
  c=null;
  print(c);
  
  // List<String> l2=['dog','cat','human'];
  // l2=null; // 非空類型

  List<String>? l3=['dog','cat','human']; // List<String>? 表示 l3 是一個可空類型
  l3=null; 
  print(l3);

// 調用可空類型的 Function
  print(getData("https://www.google.com"));
  print(getData(null));


print("-------------這是?與!的分隔線-------------");

// 2. 類型斷言

  // String? str="this is str";
  // str=null;
  // print(str!.length); // str!就叫類型斷言：如果 str 不等於 null，會 print 出 str 的長度，反之會返回異常

  // printLength(null);
  printLength("str");
  printLength2(null);
}



// 在一個方法內返回一個可空類型
String? getData(apiURL){
  if (apiURL!=null){
    return "This is server data";
  }
  return null; // 因為前面是定義 String? 可空類型，如果沒有可空，就不能返回空類型
}

// 定義一個類型斷言的方法
void printLength(String? str){
  // print(str!.length);
  if (str!=null){
    print(str.length);
  }
}

// 使用 try catch 
void printLength2(String? str){
  try {
    print(str!.length);
  } catch(e) {
    print(e);
  }
}