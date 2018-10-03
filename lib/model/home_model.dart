import 'package:scoped_model/scoped_model.dart';

class HomeModel extends Model{

  int _drawer = 0;
  String _content = "Default Content";

  int get drawer => _drawer;
  String get content => _content;

  void setDrawer(int drawer) {
     _drawer = drawer;
     notifyListeners();
  }

  void setContent(String content) {
     _content = content;
     notifyListeners();
  }
}