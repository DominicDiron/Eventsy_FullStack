import 'dart:convert';

import 'package:eventsy/model/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreference {
  static late SharedPreferences _preferences;
  static const _keyUser = 'user';
  static User currentUser = User(
      id: 'EP0001',
      name: 'Avatar',
      email: 'example@gmail.com',
      rate: 10,
      about:
          """A paragraph is a series of sentences that are organized and coherent,
         and are all related to a single topic. 
         Almost every piece of writing you do that is longer than a few sentences should be organized into paragraphs. 
         This is because paragraphs show a reader where the subdivisions of an essay begin and end,
         and thus help the reader see the organization of the essay and grasp its main points.
        Paragraphs can contain many different kinds of information.
        A paragraph could contain a series of brief examples or a single long illustration of a general point.
        It might describe a place, character, or process narrate a series of events;
        compare or contrast two or more things; classify items into categories; or describe causes and effects.
        Regardless of the kind of information they contain,
        all paragraphs share certain characteristics. One of the most important of these is a topic sentence.""",
      imagePath: " ");

  static Future init() async {
    return _preferences = await SharedPreferences.getInstance();
  }

  static Future setUser(User user) async {
    final json = jsonEncode(user.toJson());
    await _preferences.setString(_keyUser, json);
  }

  static User getUser() {
    final json = _preferences.getString(_keyUser);
    return json == null ? currentUser : User.fromJson(jsonDecode(json));
  }
}
