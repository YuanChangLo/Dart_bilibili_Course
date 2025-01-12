// class Animal{
//   // late String name; // 默認情況下是公有的
//   late String _name; // 加了 _ 會變成私有的，下面的 Print 還是能用，要讓這個真的變成私有、不能用，就要單獨抽離成一個文件當模組
//   late int age;
//   Animal(this._name,this.age);
//   void printInfo(){
//     print("${this._name}---${this.age}");
//   }
// }

class Animal{
  // late String name; // 默認情況下是公有的
  late String _name; // 加了 _ 會變成私有的，下面的 Print 還是能用，要讓這個真的變成私有、不能用，就要單獨抽離成一個文件當模組
  late int age;
  Animal(this._name,this.age);
  void printInfo(){
    print("${this._name}---${this.age}");
  }

  // 使用公有的方法來訪問私有的屬性
  String getName(){
    return this._name;    
  }

  // 定義一個方法為私有的屬性
  void _run(){
    print('這是一個私有的方法');
  }

  execRun(){
    this._run(); // 只有在這個類裡，才能調用這個方法，類裡面，方法的相互調用
  }
}