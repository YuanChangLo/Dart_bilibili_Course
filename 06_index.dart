void main(){

  // 第一種定義 maps 的方式

  var person={
    "name":"張三",
    "age":20,
    "work":["開發工程師","送外賣的"]
  };
  print(person);
  print(person["name"]);
  print(person["age"]);
  print(person["work"]);

  // 第二種定義 maps 的方式

  var p=new Map();

  p["name"]="李四";
  p["age"]=22;
  p["work"]=["開發工程師","送外賣的"];
  print(p);
  print(p["name"]);
  print(p["age"]);
  print(p["work"]);
  
}