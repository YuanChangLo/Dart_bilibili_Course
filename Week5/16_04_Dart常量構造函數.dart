/*
常量構造函數總結如下幾點：
  1. 常量構造函數須以 const 關鍵字修飾
  2. const 構造函數必須用於成員變量都是 final 的類
  3. 如果實例化時不加 const 修飾符，即使調用的是常量構造函數，實例化的對象也不是常量實例化
  4. 實例化長量構造函數的時候，多個地方創建這個對象，如果傳入的值相同，只會保留一個對象
  5. Flutter 中 const 修飾不僅僅是節省組件構建時的內存開銷， flutter 在需要重新構建組件時是不應該改變的，重新構建沒有任何意義，因此 Flutter 不會重新構建 const 組件
*/


// 常量構造函數
class Container{
  final int width; // 不能用 const，因為 final 是運行時的常量，可以先聲明再賦值
  final int height;
  const Container({required this.width, required this.height});
}

void main(){
  
  print('------1-------');
  
  var c1=Container(width:100, height:100);
  var c2=Container(width:100, height:100);
  print(identical(c1, c2)); // false

  print('------2-------');

  var c3=const Container(width:100, height:100);
  var c4=const Container(width:100, height:100);
  print(identical(c3, c4)); // true 相同實例共享儲存空間
  // 共享儲存空間的構造函數只能使用常量構造函數

  print('------3-------');
  var c5=const Container(width:100, height:100);
  var c6=const Container(width:100, height:200);
  print(identical(c5, c6)); // false
}