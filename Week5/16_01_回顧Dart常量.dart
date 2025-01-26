/*
Dart 常量： Final 和 const 修飾符

  const 聲明的常量是在編譯時確定的，永遠不會改變
  final 聲明的常量允許聲明後再賦值，賦值後不可改變，final 聲明的變量是在運行時確定的
  final 不僅有 const 的編譯時常量的特性，最重要的它是運行時常量，並且final 是惰性初始化
*/

void main(){

var PI=3.14;
PI = 3.1459;
print("一般的值： $PI" );

// const 常量
const  PI1=3.14;
// PI1 = 3.1459; const 定義的值是不能被改變的
print("const 常量： $PI1");

// Final 常量
final PI2=3.14;
print("final 常量： $PI2");

// Final 有聲明後再賦值的特性，但賦值後是不可改變的
final a;
a=13;
// a=14; 不可再次進行賦值
print(1);

final d=new DateTime.now();
}