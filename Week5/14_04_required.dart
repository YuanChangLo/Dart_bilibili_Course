/*
required 關鍵詞:

  最開始 @required 是註解

  現在他已經作為內置修飾符

  主要用於允許根據需要標記任何命名參數(函數或類)，使得他們不為空，因為可選參數中必須有個 required 
*/

String printUserInfo(String username, {int age=18, String Sex='Male'}) {  //行參 // 沒有 required 的話就必須給一個 default 的參數，以免使用時沒有傳值 
  return '姓名：$username --- 性別: $Sex --- 年齡: $age';
}


String printInfo(String username, {required int age, required String Sex}) {  //行參 // 沒有 required 的話就必須給一個 default 的參數，以免使用時沒有傳值 
  if (age != 0){
    return '姓名：$username --- 性別: $Sex --- 年齡: $age';
  }
  return '姓名：$username --- 性別: $Sex --- 年齡保密';
}

void main(){
  print(printUserInfo('roger'));
  print(printUserInfo('roger', age:20));

  // age 和 sex 為必須傳入
  print(printInfo('ROGER', age:18, Sex: 'male'));
}