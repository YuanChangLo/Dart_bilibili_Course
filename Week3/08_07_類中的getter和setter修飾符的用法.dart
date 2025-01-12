/*
class Rect{
  late num height;
  late num width;

  Rect(this.height, this.width);
  area(){
    return this.height*this.width;
  }
}
void main(){
  Rect r=new Rect(10, 4);
  print('面積：${r.area()}');
}
*/

/*
// 以上的方式可以使用 get 來實現
class Rect{
  num height;
  num width;
  Rect(this.height, this.width);
  get area{ // 也是一個方法，計算屬性
    return this.height*this.width;
  }
}
*/

class Rect{
  num height;
  num width;
  Rect(this.height, this.width);
  area(){
    return this.height*this.width;
  }
  set areaHeight(value){
    this.height=value;
  }
}


void main(){
  Rect r=new Rect(10, 4);
  
  // print("面積：${r.area()}");
  
  // print("面積：${r.area}"); // 注意：調用直接通過訪問屬性的方式訪問 area
  
  r.areaHeight=6;
  print(r.area());
}