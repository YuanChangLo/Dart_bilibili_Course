class Container{
  int width;
  int height;
  Container({required this.width, required this.height});
}

void main(){

  var c1=new Container(width:100, height:100);
  var c2=new Container(width:100, height:100);
  print(identical(c1, c2)); // c1 和 c2 在內存中存儲了2份
}