abstract class DB{ // 當作接口，接口就是一個約定、規範
  late String URI; // 數據庫的連接地址 // 因為這裡還沒有初始化，所以加一個 late 告訴系統之後會賦值
  add(String Data);
  save();
  delete();
}