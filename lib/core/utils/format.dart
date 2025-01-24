class Format {
  bool validaData(DateTime? dataEquipamento) {
    DateTime now = DateTime.now();
    if (dataEquipamento == null) {
      return true;
    }
    DateTime dataLimite = now.subtract(const Duration(days: 30));
    if (dataEquipamento.isBefore(dataLimite)) {
      return true;
    }
    return false;
  }
}
