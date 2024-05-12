double calculateGrade(matematica, portugues, ingles, fisica, isAFA) {
  double weigth;
  double finalGrade;

  isAFA ? weigth = 1.5625 : weigth = 1.0416666667;

  finalGrade = (matematica * weigth +
          portugues * weigth +
          ingles * weigth +
          fisica * weigth) /
      10;

  finalGrade = double.parse(finalGrade.toStringAsFixed(2));
  return finalGrade;
}
