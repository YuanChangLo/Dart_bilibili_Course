/*

面向對象編程 (OOP) 的三個基本特徵是：封裝、繼承、多態

  1. 封裝： 封裝是對象和類概念的主要特性。封裝，把客觀事物封裝成抽象的類，並且把自己的部分屬性和方法提供給其他物件調用，而將一部分屬性和方法隱藏起來，不對外曝露
  2. 繼承：面向對象編程 (oop) 語言的一個主要功能就是"繼承"。繼承是指這樣一種能力：他可以使用現有類的功能，並在不需要重新編寫原始類的情況下對這些功能進行擴展
  3. 多態：允許將子類類型的指針賦值給父類類型的指針，同一針函數調用會有不同的執行效果。

  Dart 所有的東西都是對象，所有的對象繼承自 Object 類型。
  Dart 是一門使用類和單繼承的面向對象語言，所有的對象都是類的實例，並且所有的類都是 object 的子類。
  一個類通常由屬性的方法組成。

*/

void main(){
  
  var myList = <dynamic>[];
  myList.isEmpty;
  myList.add('banana');
  myList.add('apple');
  myList.add('orange');

  Map map1=new Map();
  map1['username']='Roger';
  map1.addAll({'age':20});
  map1.isEmpty;

  // 子類
  int b=1234;
  // Object 父類
  Object a=123;
  
}