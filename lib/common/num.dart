extension DoubleUtils on double {
  String get skipNulls =>
      truncateToDouble() == this ? toStringAsFixed(0) : toString();
// toStringAsFixed(truncateToDouble() == this ? 0 : 2);
}
