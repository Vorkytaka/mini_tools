abstract interface class Initializable {
  Future<void> init();

  Future<void> dispose();
}
