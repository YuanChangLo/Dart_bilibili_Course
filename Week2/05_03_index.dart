/*

break 語句功能：
  1. 在 switch 語句中使流程跳出 switch 結構
  2. 在循環語句中，使流程跳出當前循環，遇到 break 循環終止，後面程式碼也不會執行

  強調：
  1. 如果在循環中已經執行了 Break 語句，就不會執行循環體中位於 break 後的語句
  2. 在多層循環中，一個 break 語句只能向外跳出一層

  break 可以用在 switch case 中，可以用在 for 循環與 while 循環中

continue 語句功能：

[註] 只能在循環語句中使用，使本次循環結束，即跳過循環體尚未執行的語句，接著進行下 
continue 可以用在 for 循環與 while 循環中，但不建議用在 while 循環中，不小心容易造成死循環

*/


import 'dart:async';

void main(){


// 1. 如果 i=4 的時候跳過
  for(var i=1; i<=10; i++){
    if(i==4){
      continue; // 跳過當前環環體
    }
    print(i);
  }


// 2. 如果 i1=4 的時候跳出循環
  for(var i1=1; i1<=10; i1++){
    if(i1==4){
      break; // 跳出循環體，循環結束
    }
    print(i1);
  }

// 3. break 只能向外跳出一層
  for(var j=0; j<5; j++){
    print("外層 $j");
    for(var k=0; k<5; k++){
      if(k==2){
        break;
      }
      print("裡層 $k");
    }
  }

// 3. break 只能向外跳出一層 (while)
  var i2=1;
  while(i2<=5){
    if(i2==4){
      break;
    }
    print(i2);
    i2++;
  }

// 4. break 只能向外跳出一層 (switch case)
  var sex='男';
  switch(sex){
    case "男":
      print(sex);
      break;
    case "女":
      print("女");
      break;
    default:
  }



}