// A data object that represents a link inside our app
// Can serialize itself to and from a location string like /book/23/ or ?book=23
import 'dart:convert';

class AppLink {
  AppLink({this.user});

  static const String kUserParam = 'u';
  static final Codec<String, String> _stringToBase64 = utf8.fuse(base64);

  String? user;

  static String? encode(String? s) {
    if (s == null) return null;
    return _stringToBase64.encode(s);
    //return s;
  }

  static String? decode(String? s) {
    if (s == null) return null;
    return _stringToBase64.decode(s);
    //return s;
  }

  static AppLink fromLocation(String? location) {
    location = Uri.decodeFull(location ?? '');
    final Map<String, String> params = Uri.parse(location).queryParameters;
    // Shared function to inject keys if they are not null
    void trySet(String key, void Function(String) setter) {
      if (params.containsKey(key)) setter.call(params[key]!);
    }

    // Create the applink, inject any params we've found
    final AppLink link = AppLink();
    trySet(AppLink.kUserParam, (s) => link.user = decode(s));
    return link;
  }

  String toLocation() {
    String addKeyValPair({required String key, String? value}) =>
        value == null ? '' : '$key=$value&';
    String loc = '/?';
    // Encode the userId just to avoid passing around plaintext user id's
    loc += addKeyValPair(key: kUserParam, value: encode(user));
    return Uri.encodeFull(loc);
  }
}