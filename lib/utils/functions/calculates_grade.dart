double calculateGrade(int matematica, portugues, ingles, fisica) {
  const peso = 1.5625;
  double finalGrade;

  finalGrade =
      (matematica * peso + portugues * peso + ingles * peso + fisica * peso) /
          10;

  return finalGrade;
}
