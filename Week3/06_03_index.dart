/*
映射(Maps)是無序的鍵值對：

  常用屬性：
    keys            獲取所有的 key 值
    values          獲取所以的 Value 值
    isEmpty         是否為空
    isNotEmpty      是否不為空
  常用方法：
    remove(key)     刪除指定 key 的數據
    addAll({...})   合併映射，給映射內增加屬性
    containsValue   查看映射內的值，返回 true/false
    forEach         
    map
    where
    any
    every

*/

void main(){

  var person={
    "name":"A",
    "age":20
  };
  var m=new Map();
  m["name"]="B";
  print(person);
  print(m);

// 常用屬性
  print(person.keys.toList());
  print(person.values.toList());
  print(person.isEmpty);
  print(person.isNotEmpty);

// 常用方法

  var person1={
    "name":"A",
    "age":20,
    "sex":"male"
  };
  person1.addAll({
    "work":['sales', 'engineer'],
    "hobby":['eat', 'sleep']
  });
  print(person1);
  person1.remove("name");
  print(person1);
  print(person1.containsValue("male"));

}