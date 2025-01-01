void main(){

// ++ --

  // ++ -- 為自增加、自減 1，那在賦值運算裡，如果 ++/-- 寫在前面，先進行運算，再賦值，反之；如果沒有做賦值運算，++/-- 寫在前後都無所謂。

  var a=10;
  a++; // a=a+1，也可以寫作++a;
  print(a);

  var b=10;
  b--; // b=b-1，也可以寫作--b;
  print(b);

  var c=10;
  var d=c++; // 運算時會從左至右，先將 c 的值給 d，再做 c=c+1 的運算

  // 但是底層的運算是 _temp = c -> c = c + 1 -> d = _temp
  print(c); // 11
  print(d); // 10

  var e=10;
  var f=++e; // 運算時會從左至右，先做 e=e+1 的運算，再將 e 的值給 f
  print(e); // 11
  print(f); // 11

  var g=10;
  var h=g--; // 運算時會從左至右，先將 g 的值給 h，再做 g=g-1 的運算
  print(g); // 9
  print(h); // 10

  var i=10;
  var j=--i; // 運算時會從左至右，先做 i=i-1 的運算，再將 i 的值給 j
  print(i); // 9
  print(j); // 9


}