// ignore_for_file: dead_code, constant_identifier_names

enum NetworkPath {
  LOGIN,
}

extension StringPathValue on NetworkPath {
  String get rawValue {
    switch (this) {
      case NetworkPath.LOGIN:
        return 'login';
        break;
    }
  }
}
