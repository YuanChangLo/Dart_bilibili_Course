/* 和 Java 一樣，dart 也有接口，但是和 java 還是有區別的

首先，dart 的接口沒有 interface 關鍵字來定義接口，而是普通類或是抽象類都可以作為接口被實現。
同樣使用 implements 關鍵字進行實現。

但是 dart 的接口有點奇怪，如果實現的類是普通類，會將普通類和抽象類的屬性和方法，全部都需要覆寫一遍

而因為抽象類可以定義抽象方法，普通類不可以，所以一般如果要食現象 Java 接口那樣的方式，一般來說會使用抽象類。

建議使用抽象類定義接口

> 定義一個 database，支持 mysql、mssql、mongodb

MySQL、MS SQL、 MongoDB 三個類裡面都有同樣的方法

*/

abstract class DB{ // 當作接口，接口就是一個約定、規範
  late String URI; // 數據庫的連接地址
  add(String Data);
  save();
  delete();
}

class MySQL implements DB{
  @override
  String URI;
  MySQL(this.URI);
  @override
  add(String Data){
    print('ADD $Data to MySQL');
  }
  @override
  delete(){
    print('Delete Data to MySQL');
  }
  @override
  save(){
    print('Save Data to MySQL');
  }
}

class MSSQL implements DB{
  @override
  String URI;
  MSSQL(this.URI);
  @override
  add(String Data){
    print('ADD $Data to MSSQL');
  }
  @override
  delete(){
    print('Delete Data to MSSQL');
  }
  @override
  save(){
    print('Save Data to MSSQL');
  }
}

void main(){
  MySQL mySQL=new MySQL('xxxx');
  mySQL.add('Fucking?');
  mySQL.delete();
  mySQL.save();

}