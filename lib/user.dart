import 'dart:async';
import 'package:aqueduct/aqueduct.dart';
import 'package:sqljocky5/sqljocky.dart';
import 'channel.dart';
class User extends Serializable {

  int id;
  String username;
  String password;
  //String mailbox;
  //String identify_code;

  static Future<List> getAll()async {
    List results;
    var s = ConnectionSettings(
      user: "deit2016",
      password: "deit2016@ecnu",
      host: "www.muedu.org",
      port: 3306,
      db: "deit2016db_10164507139",
    );

    // create a connection
    print("Opening connection ...");
    var conn = await MySqlConnection.connect(s);
    print("Opened connection!");

//        await readData(conn);
    Results result = await (await conn
        .execute('SELECT username,password'
        'FROM users'))
        ;
    print(result);
    print(result.map((r) => r.byName('username')));
    results = result.toList();
    return results;
  }

  static Future<String> selectPassword(String username)async {
    var stuList;
    String password;
    stuList = await getAll();
    print(username);
    for(int i=0;i<stuList.length;i++){
      if(stuList[i][1]==username)
        password = stuList[i][3];
    }
    if(password!=null){
      return password;
    }else{
      password = "wrong";
      return password;
    }

  }

  static Future<int> selectId(String username)async {
    var stuList;
    int id;
    stuList = await getAll();
    print(username);
    for(int i=0;i<stuList.length;i++){
      if(stuList[i][1]==username)
        id = stuList[i][0];
    }
      return id;
  }



  @override
  void readFromMap(Map<String, dynamic> map) {
//    id = map['id'];
    username = map['username'];
    password = map['password'];
    //mailbox = map['mailbox'];
    //identify_code = map['identify_code'];
  }

  @override
  Map<String, dynamic> asMap() {
    return {
//      'id': id,
      'username': username,
      'password':password,
     // 'mailbox':mailbox,
      //'identify_code':identify_code
    };
  }

  static createUser(User testuser) async {
//    List results;
    bool ifRegister = false;
    String username = testuser.username;
    String password = testuser.password;
    //String mailbox = testuser.mailbox;
    print(username);
    var s = ConnectionSettings(
      user: "deit2016",
      password: "deit2016@ecnu",
      host: "www.muedu.org",
      port: 3306,
      db: "deit2016db_10164507139",
    );

    // create a connection
    print("Opening connection ...");
    var conn = await MySqlConnection.connect(s);
    print("Opened connection!");

    print("Inserting rows ...");
  
    await conn.prepared("INSERT INTO users (username,password) VALUES (?,?)", [
      [username, password],
      ]);
    ifRegister = true;
    return ifRegister;
  }
}