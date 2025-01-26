/*
dart:core 庫中 identical 函數的用法介紹如下。

用法：
bool identical(
  Object? a,
  Object? b
)
檢查兩個引用是否指向同一個對象。

var o = new Object();

  var isIdentical = identical(o, new Object()); // false, different objects.
  print(isIdentical);

  isIdentical = identical(o, o); // true, same object
  print(isIdentical);

  isIdentical = identical(const Object(), const Object()); // true, const
  print(isIdentical);

  isIdentical = identical([1], [1]); // false
  print(isIdentical);
*/

void main(){
  print('------1-------');
  var o1 = new Object();
  var o2 = new Object();
  print(identical(o1, o2)); // false
  print(identical(o1, o1)); // true

  print('------2-------');

  var o3 = Object();
  var o4 = Object();
  print(identical(o3, o4)); // false
  print(identical(o3, o3)); // true

  print('------3-------');

// 表示實例化常量構造函數
// o5 和 o6 共享了存儲空間
  var o5 = const Object();
  var o6 = const Object();
  print(identical(o5, o6));  // true
  print(identical(o5, o5));  // true

  print('------4-------');

  print(identical([2],[2])); // false
  var a=[2];
  var b=[2];
  print(identical(a,b)); // false

  print('------5-------');

  print(identical(const[2],const[2])); // true
  const c=[2];
  const d=[2];
  print(identical(c,d)); // true

  print('------6-------');

// 常量定義的值要相等才會儲存在同一個空間
  const e=[2];
  const f=[3];
  print(identical(e,f)); // false

}
// 發現： const 關鍵詞在多個地方創建相同的對象的時候，內存中只保留了一個對象