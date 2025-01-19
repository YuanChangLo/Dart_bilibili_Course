import './lib/mysql.dart';
import './lib/mssql.dart';
void main(){
  MySQL mySQL=new MySQL('URI 的地址');
  mySQL.add('Fucking?');
  mySQL.delete();
  mySQL.save();

  MSSQL mssql=new MSSQL('URI 的地址');
  mssql.URI='123.123.123.123';
  mssql.add('Fuckyou');
}