/* 
通俗理解：泛型就是解決、類、接口、方法的復用性，以及對不特定數據類型的支持 (類型校驗)
*/

// 只能返回 String 類型的數據

String getData(String value){
  return value;
}


// 同時支持返回 String 類型和 int 類型 (代碼冗余)

String getData1(String value){
  return value;
}

int getData2(int value){
  return value;
}

// 同時返回 String 類型和 Number 類型，不指定類型可以解決這個問題

getData3(value){
  return value; // 這種方式就少了類型檢查的作用
}

// 不指定類型放棄了類型檢查，我們現在想實現的是傳入什麼，就返回什麼，比如：傳入 Number 類型必須返回 Number 類型

T getData4<T>(T value){ // 用任意一個字母或詞表示泛型
  return value;
}

void main(){
  print(getData4(18));
  print(getData4('Roger'));
  getData4<String>('Lo');  // 泛型做類型校驗
  getData4<int>(20);
}