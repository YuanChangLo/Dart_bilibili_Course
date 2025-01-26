
// 必須傳入的命名參數
class Person {
  late String name;
  late int age;
  Person({required this.name,required this.age}); // 表示 name 和 age 必須傳入

  String getName(){
    return "${this.name} ---- ${this.age}";
  }
}

void main(){
  Person p = new Person(
    name: 'Roger',
    age: 30
  );
  print(p.getName());
}