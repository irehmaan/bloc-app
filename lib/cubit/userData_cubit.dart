import 'package:detailsapp/cubit/userData.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

 /*
  created a user data cubit that extends a Cubit of
  List<UserData> and within the connstructor is 
  provided an empty list.

  Then created a function addUser( That takes UserData as argument).
  We then added the recieved the userdata to the empty list.
 */ 

class UserDataCubit extends Cubit<List<UserData>> {
  UserDataCubit() : super([]);

  addUser(UserData userdata) {
    state.add(userdata);
    emit(List.from(state));
  }
}
