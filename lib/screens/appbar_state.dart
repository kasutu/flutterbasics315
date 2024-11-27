class AppbarState {
  static const List<String> titles = ["Home", "Work", "Code"];

  static String getAppBarTitle(int index) {
    if (index < 0 || index >= titles.length) return "";
    return titles[index];
  }
}
