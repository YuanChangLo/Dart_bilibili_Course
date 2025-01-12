
/*

List 裡面常用的屬性和方法

  常用屬性：
    length      長度
    reversed    翻轉
    isEmpty     是否為空
    isNotEmpty  是否不為空

  常用方法
    add                       增加
    addAll                    拼接數組
    indexOf                   查找，傳入具體值
    remove                    刪除，傳入具體值
    removeAt                  刪除，傳入索引值
    fillRange                 修改
    insert(index,value);      指定位置插入
    insertAll(index,value)    指定位置插入 List
    toList()                  其他類型轉換成 List
    join()                    List 轉換成字符串
    split()                   字符串轉換成 List
    forEach
    map
    where
    any
    every

*/

void main(){

// 1. List 中的常用屬性
  List myList1=['banana','apple','orange'];
  print(myList1.length);
  print(myList1.reversed); // 對列表倒序排序
  print(myList1.isEmpty);
  print(myList1.isNotEmpty);

  var newMyList=myList1.reversed.toList(); // 因為經過翻轉語法後的值已經不是 List，所以如果要讓 newMyList 是 List 類型的話，就要使用 toList 來進行 List 類型的轉換
  print(newMyList);

// 2. List 中的常用方法
  List myList2=['banana','apple','orange'];
  myList2.add('peach'); // 增加數據，增加一個
  myList2.addAll(['grape', 'pineapple']); // 定義一個 List，拼接上原本的 List 
  print(myList2);
  print(myList2.indexOf('apple')); // indexOf 查找數據，查找不到返回 -1 ，查找到返回索引值，apple 的索引值為 1 (List 中的第二個)
  
  myList2.remove('orange'); // 刪除數據
  print(myList2); 

  myList2.removeAt(2); // 刪除數據，利用索引值
  print(myList2); 

  List myList3=['banana','apple','orange'];
  // myList3.fillRange(1, 2, 'aaa'); // 算到結束索引值的上一個
  // print(myList3);

  myList3.insert(1, 'bbb'); // 插入一個
  print(myList3);

  myList3.insertAll(1, ['ccc', 'ddd']); // 插入多個
  print(myList3);  


  List myList4=['banana','apple','orange'];
  var str=myList4.join('-'); // List 轉換成字符串
  print(str);
  print(str is String); // 確認是否轉成 String 類型

  var str1='banana-apple-orange';
  var list1=str.split('-'); // 字符串轉換成 List
  print(list1);
  print(list1 is List); // 確認是否轉成 List 類型
}