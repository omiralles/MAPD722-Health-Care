import 'package:mongo_dart/mongo_dart.dart';
import 'package:mapd722_health_care/models/user.dart';
import 'package:mapd722_health_care/models/constants.dart';

class DataBase {
  static var db,
      userCollection,
      residentCollection,
      serviceCollection,
      recordCollection;

  static connect(String collection) async {
    db = await Db.create(Constants.MONGO_CONN_URL);

    await db.open();

    print('Database open');
  }

  static insertUser(User user) async {
    userCollection = db.collection(Constants.USER_COLLECTION);

    await userCollection.insertAll([user.toMap()]);
  }

  static Future<bool> getLogin(String username, String pass) async {
    userCollection = db.collection(Constants.USER_COLLECTION);

    var u = await userCollection.findOne({"username": username});
    if (u != null) {
      if (u["password"] == pass) {
        return true;
      }
    }
    return false;
  }

  static Future<List<Map<String, dynamic>>> getUsers() async {
    userCollection = db.collection(Constants.USER_COLLECTION);

    final users = await userCollection.find().toList();
    return users;
  }

  static updateUser(User user) async {
    userCollection = db.collection(Constants.USER_COLLECTION);

    var u = await userCollection.findOne({"_id": user.id});
    u["firstname"] = user.firstname;
    u["lastname"] = user.lastname;
    u["address"] = user.address;
    u["sin"] = user.sin;
    u["age"] = user.age;
    u["phone"] = user.phone;
    await userCollection.save(u);
  }

  static deleteUser(User user) async {
    userCollection = db.collection(Constants.USER_COLLECTION);

    await userCollection.remove(where.id(user.id));
  }
}
