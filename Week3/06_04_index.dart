/*

forEach
map
where
any
every

*/


void main(){

  List myList1=['banana','apple','watermelon'];

  for(var i=0;i<myList1.length; i++){;
    print(myList1[i]);
  }

  for(var item in myList1){;
    print(item);
  }

  myList1.forEach((value){
    print("$value");
  });

  List myList2=[1,3,4];
  var newList=myList2.map((value){
    return value*2;
  });
  print(newList);
  print(newList.toList());

  List myList3=[1,3,4,5,6,7,8,9];
  var newList3=myList3.where((value){
    return value>5;
  });
  print(newList3);
  print(newList3.toList());

  List myList4=[1,3,4,5,6,7,8,9];
  var f=myList4.any((value){    // 只要集合裡面有滿足條件的就返回 true
    return value>5;
  });
  print(f);

  List myList5=[1,3,4,5,6,7,8,9];
  var f1=myList4.every((value){    // 每一個都要滿足條件返回 true，否則返回 false
    return value>5;
  });
  print(f1);

// Set

  var s=new Set();
  s.add([1,22,333]);
  s.forEach((value)=>print(value));

// Map 

  Map person={
    "name":"John",
    "age":30,
    "city":"New York"
  };
  person.forEach((key,value){
    print("$key----$value");
  });

}