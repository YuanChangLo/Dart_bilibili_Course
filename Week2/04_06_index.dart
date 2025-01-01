import 'dart:async';

void main(){
  
  // 1. if else switch case

  bool flag=true;
  if(flag){
    print("true");
  }else{
    print("false");
  }

    // Q: 判斷一個人的成績，如果大於 60 的話，顯示及格，如果大於 70 的話，顯示良好，如果大於 90 的話，顯示優秀。

  var score= 80;

  if(score >= 90){
    print("優秀");
  }else if(score >= 70){
    print("良好");
  }else if(score >= 60){
    print("及格");
  }else{
    print("不及格");
  }

  var sex = '男生';

  switch(sex){
    case '男生':
      print('Good Boy!');
      break;
    case '女生':
      print('Bad Girl!');
      break;
    default:
      print('咦？');
  }

  // 2. 三目運算符

  var flag1=true;
  var c;
  if(flag1){
    c='我是 true';
  }else{
    c='我是 False';
  }
  print(c);

  bool flag2=true;
  String d=flag2?'我是 true':'我是 False';
  print(d);

  // 3. ?? 運算符

  var a;
  var b=a ?? 10;
  print('b = $b');

  var e=22;
  var f=e ?? 10;
  print('f = $f');

}