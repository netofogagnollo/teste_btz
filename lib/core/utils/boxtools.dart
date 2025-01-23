class Boxtools {
  size(double size, {double min = 10, double max = 22}) {
    if (size < min) {
      return min;
    }
    if (size > max) {
      return max;
    }
  }

  sizeWidget(double size, {double min = 10, double max = 22}) {
    if (size < min) {
      return min;
    }
    if (size > max) {
      return max;
    }
  }
}
