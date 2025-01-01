void main(){

  // 1. 基礎賦值運算符 = ??=
  
    // int a=10;
    // int b=3;
    // print(a);
    // int c=a+b;  // 從右到左

    // d??=23; 表示如果 d 為空的話，把 23 賦值給 d 
    // var d; // 我的無法用 int 來定義 d 為空值
    // d??=23;
    // print(d);

    // int e=2;
    // e??=8;
    // print(e);
  
  // 2. 複合賦值運算符 += -= *= /= %= ~/=

    var a=12;
    a=a+10;
    print(a);

    var b=12;
    b+=10; // 表示 b=b+10
    print(a);

    var c=3;
    c*=3;
    print(c);
}