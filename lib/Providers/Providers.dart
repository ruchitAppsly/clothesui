import 'package:riverpod/riverpod.dart';

final databaseProvider=Provider<Database>((ref)=>Database());

class Database{
  Future<String> userData(){
    return Future.delayed(Duration(seconds: 2),(){
      return "Hope";
    });
  }
}