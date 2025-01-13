void main(){

// 需求：使用 forEach 打印下面 List 裡的數據

  List list1=['a','b','c'];
  
  // Method.1
  list1.forEach((value){
    print(value);
  });
  // Method.2
  list1.forEach((value)=>print(value));
  // Method.3
  list1.forEach((value)=>{
    print(value)
  });

// 需求：修改下面 List 裡面的數據，讓數組中大於 2 的值乘以 2

  List list2=[1,2,3,4,5];
  // Method 1
  var newList=list2.map((value){
    if(value>2){
      return value*2;
    }
    return value;
  });
  print(newList);
  print(newList.toList());

  // Method 2
  var newList2=list2.map((value)=>value>2?value*2:value);
  print(newList2);
  print(newList2.toList());

// 需求： 1. 定義一個方法 isEvenNumber 來判斷一個數是否為偶數 

  bool isEvenNumber(int n){
    if(n%2==0){
      return true;
    }
    return false;
  }
  // 2. 定義一個方法打印 1-n 以內的所有偶數

  printNum(int n){
    for(var i=1;i<=n;i++){
      if(isEvenNumber(i)){
        print(i);
      }
    }
  }

printNum(10);

}