import 'package:flutter/cupertino.dart';

import '../model/user_model.dart';

class UserProvider with ChangeNotifier {
   User _user = User();

   User get user => _user;

   setUser(User user) {
     _user = user;
     notifyListeners();
   }

}