/* 
Dart 中的範型接口：

實現數據緩存的功能，有文件緩存、和內存緩存。內存緩存和文件緩存按照接口約束實現。
1. 定義一個範型接口，約束實現它的子類必須有 getByKey(key) 和 setByKey(key,value)
*/

// 定義了兩個抽象類
abstract class ObjectCache{
getByKey(String key);
void setByKey(String key,Object value);
}

abstract class StringCache{
  getByKey(String key);
  void setByKey(String key,String value);
}

// 抽象類作為一個範型的接口
abstract class Cache<T>{
  getByKey(String key);
  void setByKey(String key,T value);
}

class FileCache<T> implements Cache<T>{
  @override
  getByKey(String key){
    return null;
  }
  @override
  void setByKey(String key, T value){
    print('FileCache Key=${key},Value=${value}');
  }
}

class MemoryCache<T> implements Cache<T>{
  @override
  getByKey(String key) {
    return null;
  }
  @override
  void setByKey(String key, T value) {
    print('MemoryCache Key=${key},Value=${value}');
  }
}

void main(){
  MemoryCache M=new MemoryCache<String>();
  M.setByKey('Roger', '18'); // Value 用 int 就會輸出錯誤訊息

  MemoryCache mmap=new MemoryCache<Map>();
  mmap.setByKey('ROGER', {'work':'SA','age':'18'});
}


