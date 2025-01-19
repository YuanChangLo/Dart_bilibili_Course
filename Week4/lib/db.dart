abstract class DB{ // 當作接口，接口就是一個約定、規範
  late String URI; // 數據庫的連接地址
  add(String Data);
  save();
  delete();
}
