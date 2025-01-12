class Rect{
  late int height;
  late int width;
  Rect():height=2,width=10{ // 實例化前進行一個操作
    print("${this.height} --- ${this.width}"); // 就會先賦值，再執行構造函數
  }
  getArea(){
    return this.height*this.width;
  }

}


void main(){
  Rect r=new Rect();
  print(r.getArea());
}