import 'package:sqflite/sqflite.dart' as sql;

class SQLHelper2 {
  /// 2. create table  with name and password and email
  static Future<void> createTable(sql.Database daatabase) async {
    await daatabase.execute("""CREATE TABLE login(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        name TEXT,
        email TEXT,
        password TEXT,
        createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
      )""");
  }

  ///1.create database
  static Future<sql.Database> MYDATA() async {
    return sql.openDatabase('myname.daatabase', version: 1,
        onCreate: (sql.Database daatabase, int version) async {
          await createTable(daatabase);
       });
  }

///add datas to nametable , inside myname.daatabase
 static Future<int>Addnewuser(String name, String email,String password)async{
    final daatabase =await SQLHelper2.MYDATA();
    final data = {'name' : name,'email':email,'password' :password};
    final id = daatabase .insert('user', data);
    return id;
 }
 static Future<List<Map>> Checklogin(String email,String password) async{
    final daatabase = await SQLHelper2.MYDATA();
    final data = await daatabase.rawQuery(
      "SELECT * FROM login WHERE emai='$email' AND password='$password'");
    if (data.isNotEmpty){
      return data;
    }
    return data;
 }
  ///check user already exist
static Future<List<Map>>userFound(String uname,String eemail)async {
    final daatabase =await SQLHelper2.MYDATA();
    final data = daatabase.rawQuery("SELECT * FROM user");
    return data;
}
static Future<void>Deleteuser(int id)async {
    final daatabase = await SQLHelper2.MYDATA();
    daatabase.delete('user', where: 'id=?', whereArgs:[id]);
}

  }

