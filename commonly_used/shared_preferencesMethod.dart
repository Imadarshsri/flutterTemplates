import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

void saveUserDetails(FirebaseUser user) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('UID', 'RBKarOGjPLjMk3fjxAyv');
  // prefs.setString('UID', user.uid);
  prefs.setString('PhoneNo', user.phoneNumber);
}

readUID() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  //Return String
  String uid = prefs.getString('UID') ?? "";
  return uid;
}

removeValues() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  //Remove String
  prefs.remove("UID");
}
