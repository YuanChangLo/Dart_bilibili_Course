void main(){
  // == != > < >= <= 返回值是 True or False

  int a = 13;
  int b = 5;

  print(a==b); // 判斷是否相等
  print(a!=b); // 判斷是否不相等
  print(a>b); // 判斷是否大於
  print(a<b); // 判斷是否小於
  print(a>=b); // 判斷是否大於等於
  print(a<=b); // 判斷是否小於等於

  if (a>b){
    print('a 大於 b');
  }else{
    print('a 小於等於 b');
  }
}