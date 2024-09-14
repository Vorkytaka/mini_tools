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
}
