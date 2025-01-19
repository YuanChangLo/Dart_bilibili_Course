import './db.dart';
class MySQL implements DB{
  @override
  String URI;
  MySQL(this.URI);
  @override
  add(String Data){
    print('ADD $Data to MySQL');
  }
  @override
  delete(){
    print('Delete Data to MySQL');
  }
  @override
  save(){
    print('Save Data to MySQL');
  }
}