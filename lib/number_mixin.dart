mixin NumberMixin {
  final List<String> _textList = [];
  int? _counts;

  void setCount(int? counts) => _counts = _counts ?? counts;

  void addToTextList(String item) => _textList.add('Counts: ${_counts ?? 0}');

  List<String> getTextList() => _textList;

  void clearTextList() {
    _textList.clear();
    _counts = 0;
  }

  int? getCounts() => _counts;

  void incrementCounts() => _counts = (_counts ?? 0) + 1;
}
