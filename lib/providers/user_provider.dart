import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/user.dart';

class UserProvider with ChangeNotifier {
  List<User> _users = [];
  String _searchQuery = '';
  bool _isLoading = false;
  String? _error;

  List<User> get users => _users
      .where((user) => user.name.toLowerCase().contains(_searchQuery.toLowerCase()))
      .toList();
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> fetchUsers() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
      if (response.statusCode == 200) {
        _users = (json.decode(response.body) as List)
            .map((data) => User.fromJson(data))
            .toList();
      } else {
        _error = 'Failed to load users';
      }
    } catch (e) {
      _error = 'An error occurred';
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  void setSearchQuery(String query) {
    _searchQuery = query;
    notifyListeners();
  }
}
