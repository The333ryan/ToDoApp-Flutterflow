import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  /// Whatever the heck zenquotes API returns for the quote
  String _zenQuote = '';
  String get zenQuote => _zenQuote;
  set zenQuote(String value) {
    _zenQuote = value;
  }

  /// The author of the quote that zenquotes brings up since that's included in
  /// the json
  String _quoteAuthor = '';
  String get quoteAuthor => _quoteAuthor;
  set quoteAuthor(String value) {
    _quoteAuthor = value;
  }
}
