//! 1# Eager initialization.
class EzgerInitializationDBHelper {
  EzgerInitializationDBHelper._(); // private constarctor.

  // instanse of private DBHelper.
  static final EzgerInitializationDBHelper instance =
      EzgerInitializationDBHelper._();

  int counter = 1;
  incrementCounter() {
    return counter++;
  }
}

//! 2# Lazy initialization
class LazyInitializationDBHelper {
  static LazyInitializationDBHelper? _instance;
  LazyInitializationDBHelper._internal();

  static LazyInitializationDBHelper? getInstance() {
    
    _instance ??= LazyInitializationDBHelper._internal();
    return _instance;
  }

  int counter = 1;
  incrementCounter() {
    return counter++;
  }
}

//! 3# Factory Singleton
class FactorySingletonDBHelper {
  FactorySingletonDBHelper._();
  static final FactorySingletonDBHelper _instance =
      FactorySingletonDBHelper._();

  factory FactorySingletonDBHelper() => _instance;

  int counter = 1;
  incrementCounter() {
    return counter++;
  }
}
