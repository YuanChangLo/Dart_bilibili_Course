import './db.dart';
class MSSQL implements DB{
  @override
  String URI;
  MSSQL(this.URI);
  @override
  add(String Data){
    print('ADD $Data to MSSQL');
  }
  @override
  delete(){
    print('Delete Data to MSSQL');
  }
  @override
  save(){
    print('Save Data to MSSQL');
  }
}