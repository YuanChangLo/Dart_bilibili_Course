/*
Dart 判斷數據類型，可以透過 is 關鍵詞來判斷類型
*/
void main(){
  
  var str='1234';

  if(str is String){
    print('是 String');
  }else if(str is int){
    print('是 int');
  }else{
    print('是其他類型');
  }
  
  var str1=123;

  if(str1 is String){
    print('是 String');
  }else if(str1 is int){
    print('是 int');
  }else{
    print('是其他類型');
  }

}