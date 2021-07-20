import 'package:clothes/Providers/Providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userProvider=FutureProvider<String>((ref)async{
  return ref.read(databaseProvider).userData();
});