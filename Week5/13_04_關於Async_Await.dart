/*
[ async 和 await ]這兩個關鍵字的使用只需要記住裡個點
  1. 只有 async 方法才能使用 await 關鍵字調用方法
  2. 如果調用別的 async 方法必須使用 await 關鍵字

async 是讓方法變成異步
await 是等待異步方法執行完成
*/

void main() async{
  var result = await testAsync();
  print(result);
}


// 異步方法
testAsync() async{
  return 'Hello async';
}