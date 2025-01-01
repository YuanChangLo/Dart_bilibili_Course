/* 

for 基本語法

  for (int i = 1; i <= 100; i++){
    print(i);
  }
  
  第一步，變量聲明 int i = 1;
  第二步，判斷 i <= 100;
  第三步，Print(i);
  第四步，i++
  第五步，從第二步驟再來，直到判斷為 False

*/

void main(){

  // for(int i=1; i<=10; i++){
  //   print(i);
  // }

// 1. 打印 0-50 所有的偶數

  for(int i=0; i<=50; i=i+2){
      print(i);
    }

  for(int i2=0; i2<=50; i2++){
    if(i2%2==0){
      print(i2);
  }
  }

// 2. 求 1+2+3+...+100 的值

  var sum=0;
  for(int i3=0; i3<=100; i3++){
    sum=sum+i3; //sum+=i3
  }
  print(sum);

// 3. 計算 5 的階乘 (1*2*3*4*5; N的階乘 1*2*3*...*N)

  var sum1=1;
  for(int i4=1; i4<=5; i4++){
    sum1=sum1*i4;
  }
  print(sum1);


// 4. 打印 List ['張三','李四','王五']裡面的內容

  List list=['張三','李四','王五'];
  print(list[0]);
  for(var i5=0; i5<list.length; i5++){
    print(list[i5]);
  }

// 5. 打印 List

  List list1=[{
    "tittle":"新聞111"
  },
  {
    "tittle":"新聞222"
  },
  {
    "tittle":"新聞333"
  }
  ];

  for(var i6=0; i6<list1.length; i6++){
    print(list1[i6]["tittle"]);
  }

  // 要回去複習一下 List 用法，特別是 key/value 形式的使用

// 6. 定義一個二維數組，打印裡面的內容

  List list2=[
  {
    "Cate":"國內",
    "News":[
        {"tittle":"國內新聞111"},
        {"tittle":"國內新聞222"},
        {"tittle":"國內新聞333"},
    ]
  },
  {
    "Cate":"國際",
    "News":[
        {"tittle":"國際新聞111"},
        {"tittle":"國際新聞222"},
        {"tittle":"國際新聞333"},
    ]
  },
  ];

  /*
    需要打印成以下樣式：

    國內
      國內新聞111
      國內新聞222
      國內新聞333
    國際
      國際新聞111
      國際新聞222
      國際新聞333
  */

  for(var i7=0; i7<list2.length; i7++){
    print(list2[i7]["Cate"]);
    print("------------------");
    
    for(var i8=0; i8<list2[i7]["News"].length; i8++){
      print(list2[i7]["News"][i8]["tittle"]);
    }
  }

}