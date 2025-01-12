/*
Set
1. 用他最主要的功能就是去除數組重複的內容
2. Set 是沒有順序且不能重複的集合，所以不能通過索引去獲取值
*/


void main(){

  var s=new Set();
  s.add('banana');
  s.add('apple');
  s.add('apple');
  print(s); // 只會有 banana 和 apple
  print(s.toList()); // 轉換回 List

  List myList1=['banana','apple','watermelon','banana','apple','watermelon'];
  var mySet1=new Set();
  mySet1.addAll(myList1);
  print(mySet1); // 只會有 banana 和 apple
  print(mySet1.toList()); // 轉換回 List

}