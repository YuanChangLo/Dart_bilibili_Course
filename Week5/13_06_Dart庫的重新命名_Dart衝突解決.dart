/*
當引入兩個庫中有相同名稱標示浮的時候，如果是 Java 通常我們通過寫上完整的包名路徑來指定使

import 'package:lib1/lib1.dart';
import 'package:lib2/lib2.dart' as lib2;

Element element1 = new Element();            // Uses Element from lib1
lib2.Element element2 = new lib2.Element();  // Uses Element form lib2
*/

import 'lib/Person1.dart';
import 'lib/Person2.dart' as lib; // 沒有使用 as lib 會報錯，因為兩個lib 有一樣的東西，系統不知道要用誰的

main (List<String> args){
  Person p1=new Person('Roger', 18);
  p1.printInfo();

  lib.Person p2=new lib.Person('ROGER', 20);
  p2.printInfo();
}