extension ListUtils<E> on List<E> {
  /// Return new [List] with elements separated by [separator].
  ///
  /// If current list is empty or has just one element this list will be returned.
  ///
  /// Actually, it can be written for [Iterable], but we use list because of
  /// some specific places.
  List<E> interpose(E separator) {
    if (isEmpty || length == 1) {
      return this;
    }

    final list = <E>[];
    final iterator = this.iterator;

    if (iterator.moveNext()) {
      list.add(iterator.current);
      while (iterator.moveNext()) {
        list.add(separator);
        list.add(iterator.current);
      }
    }

    return list;
  }

  String joinWithLast(String separator, String lastSeparator) {
    if (length == 0) {
      return '';
    }
    if (length == 1) {
      return first.toString();
    }

    final buffer = StringBuffer();
    buffer.writeAll(sublist(0, length - 1), separator);
    buffer.write(lastSeparator);
    buffer.write(last);

    return buffer.toString();
  }
}

extension IterableUtils<E> on Iterable<E> {
  /// Return first element of the list that return true from [test]
  /// or null if there is no element for that
  E? firstWhereOrNull(bool Function(E element) test) {
    for (final element in this) {
      if (test(element)) {
        return element;
      }
    }
    return null;
  }

  /// Map through the [Iterable] with `index` and `element`.
  Iterable<R> mapIndexed<R>(R Function(int index, E element) convert) sync* {
    var index = 0;
    for (final element in this) {
      yield convert(index++, element);
    }
  }

  /// Format iterable with given [separator] between items from first to pre last.
  /// And with giver [lastSeparator] between pre last and last items.
  ///
  /// If there is no item empty string returns.
  /// If there is one item this item as string returns.
  String joinWithLast(String separator, String lastSeparator) {
    final iterator = this.iterator;

    if (!iterator.moveNext()) {
      return '';
    }

    var prev = iterator.current;
    if (!iterator.moveNext()) {
      return prev.toString();
    }

    final buffer = StringBuffer();
    buffer.write(prev);
    prev = iterator.current;

    while (iterator.moveNext()) {
      buffer.write(separator);
      buffer.write(prev);
      prev = iterator.current;
    }

    buffer.write(lastSeparator);
    buffer.write(prev);

    return buffer.toString();
  }

  Map<K, List<E>> groupBy<K>(K Function(E) key, [Map<K, List<E>>? mappedTo]) {
    final map = mappedTo ?? <K, List<E>>{};
    for (final element in this) {
      (map[key(element)] ??= []).add(element);
    }
    return map;
  }
}