
// Name 可以傳入也可以不傳入 age 必須傳入
class Person {
  String? name; // 可傳可不傳
  int age;
  Person({this.name,required this.age}); // 表示 age 必須傳入

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

  Person p1 = new Person(
    age: 30
  );
  print(p1.getName());
}