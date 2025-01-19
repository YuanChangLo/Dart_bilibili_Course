/*
while & do while 

語法格式：
  
  while(表達式/循環條件){
    語句/循環體
  }

  do{
    語句/循環體
  }while(表達式/循環條件);

注意：
  1. 最後的分號不要忘記加
  2. 循環條件中的變量需要經過初始化
  3. 循環體中，應有結束循環的條件，否則會造成死循環
*/

void main(){

  // 死循環的例子如下
  // int i=1;
  // while(i<=10){
  //   print(i); 沒有結束的條件，會一直打印 1
  // }

  int i=1;
  while(i<=10){
    print(i);
    i++;
  }

// 1. 求 1+2+3+...+100 的合

var sum=0;
var i1=1;
while(i1<=100){
  sum+=i1;
  i1++;
}
print(sum);

var sum2=0;
var i2=1;
do{
  sum2+=i2;
  i2++;
}while(i2<=100);
print(sum2);

// while 與 do while 的區別為：第一次循環條件不成立的情況下

  // 以下是不會執行的，因為 i3 永遠大於 2
  int i3=10;
  while(i<2){
    print('執行代碼');
  };

  // 會先執行打印的語句，然後再做循環條件的判斷，以下是判斷 i4 永遠大於，所以循環結束
  int i4=10;
  do{
    print('執行代碼');
  }while(i4<2);

}