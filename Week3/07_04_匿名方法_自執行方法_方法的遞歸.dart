int getNum(int n){
  return n;
}

void main(){

  print(getNum(12));

// 匿名方法

  var printNum=(){ // 將方法 function ? 賦值給一個變量
    print(123);
  };
  printNum();

  var printNum2=(int n){ 
    print(n+2);
  };
  printNum2(20);

// 自執行方法

  ((int n){  // 接受參數
    print(n); // 打印 n
    print('我是自執行方法');
  })(12); // 傳入參數


// 方法的遞歸

  var sum=1;
  fn(int n){
    sum*=n;
    if (n==1){
      return ;
    }
    fn(n-1);
  }
  fn(5);
  print(sum);

// 通過方法的遞歸來求 1-100 的和

  var sum2=0;
  fn2(int n){
    sum2+=n;
    if (n==0){
      return ;
    }
    fn2(n-1);
  }
  fn2(100);
  print(sum2);


}