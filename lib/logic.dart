import 'dart:math';

import 'package:flutter/material.dart';

class Logic {
  static double _calculateActorsPoints({
    required double simple,
    required double average,
    required double complicate,
  }) =>
      simple + average * 2 + complicate * 3;

  static double _calculateUseCasePoints({
    required double simpleB,
    required double averageB,
    required double complicateB,
    required double simpleM,
    required double averageM,
    required double complicateM,
    required double simpleT,
    required double averageT,
    required double complicateT,
  }) =>
      (simpleB * 5 +
          averageB * 10 +
          complicateB * 15 +
          simpleM * 5 * 1.2 +
          averageM * 10 * 1.2 +
          complicateM * 15 * 1.2 +
          simpleT * 5 * 1.5 +
          averageT * 10 * 1.5 +
          complicateT * 15 * 1.5);

  static double _calculateTCFPoints({
    required double distribute,
    required double responsiveness,
    required double onlineEfficiency,
    required double innerProcessComplexity,
    required double sourceCodeResusability,
    required double easyImplement,
    required double easyToUse,
    required double adaptability, //khả năng chuyển đổi
    required double flexibility,
    required double concurrency,
    required double specialSecurity,
    required double accessThirdPartySoftware,
    required double specialTrainingRequire,
  }) =>
      (0.6 +
          0.01 *
              (distribute * 2 +
                  responsiveness +
                  onlineEfficiency +
                  innerProcessComplexity +
                  sourceCodeResusability +
                  easyImplement * 0.5 +
                  easyToUse * 0.5 +
                  adaptability * 2 +
                  flexibility +
                  concurrency +
                  specialSecurity +
                  accessThirdPartySoftware +
                  specialTrainingRequire));

  static double _calculateEFPoints({
    required double rupKnowledge,
    required double similarAppExperiences,
    required double oopExperiences,
    required double leaderShip,
    required double activeness,
    required double requirementStability,
    required double useParttimeEmployee,
    required double codeLanguageDifficulty,
  }) =>
      (1.4 +
          (-0.03 *
              (rupKnowledge * 1.5 +
                  similarAppExperiences * 0.5 +
                  oopExperiences +
                  leaderShip * 0.5 +
                  activeness +
                  requirementStability * 2 +
                  useParttimeEmployee * (-1) +
                  codeLanguageDifficulty * (-1))));

  static double _calculateESPoinst({required double si}) {
    double value = 0;
    if (si <= 0) {
      value = 0;
    }
    if (si > 0) {
      value = 0.05;
    }
    if (si > 1) {
      value = 0.1;
    }
    if (si > 2) {
      value = 0.6;
    }
    if (si > 3) {
      value = 1;
    }
    // debugPrint('si: $si');
    // debugPrint('value: $value');
    return value;
  }

  static double _calculateWorkTimeInterpolation({
    required double rupKnowledge,
    required double similarAppExperiences,
    required double oopExperiences,
    required double leaderShip,
    required double activeness,
    required double requirementStability,
    required double useParttimeEmployee,
    required double codeLanguageDifficulty,
  }) {
    final esPoints = _calculateESPoinst(si: rupKnowledge * 1.5) +
        _calculateESPoinst(si: similarAppExperiences * 0.5) +
        _calculateESPoinst(si: oopExperiences) +
        _calculateESPoinst(si: leaderShip * 0.5) +
        _calculateESPoinst(si: activeness) +
        _calculateESPoinst(si: requirementStability * 2) +
        _calculateESPoinst(si: useParttimeEmployee * (-1)) +
        _calculateESPoinst(si: codeLanguageDifficulty * (-1));
    if (esPoints >= 3) {
      return 20;
    } else if (esPoints >= 1) {
      return 32;
    } else {
      return 48;
    }
  }

  static double _calculateAverageSalary(
      // {
      // required List<SalaryData> salaryDatas,}

      ) {
    // for (SalaryData data in salaryDatas){

    // }
    return 43750;
  }

  static double calculateApplicationPrice({
    //TFW
    required double distribute,
    required double responsiveness,
    required double onlineEfficiency,
    required double innerProcessComplexity,
    required double sourceCodeResusability,
    required double easyImplement,
    required double easyToUse,
    required double adaptability,
    required double flexibility,
    required double concurrency,
    required double specialSecurity,
    required double accessThirdPartySoftware,
    required double specialTrainingRequire,
    //number of actors
    required double simple,
    required double average,
    required double complicate,
    //use case
    required double simpleB,
    required double averageB,
    required double complicateB,
    required double simpleM,
    required double averageM,
    required double complicateM,
    required double simpleT,
    required double averageT,
    required double complicateT,
    //P (interpolation)
    required double rupKnowledge,
    required double similarAppExperiences,
    required double oopExperiences,
    required double leaderShip,
    required double activeness,
    required double requirementStability,
    required double useParttimeEmployee,
    required double codeLanguageDifficulty,
    //salary
    // required List<SalaryData> salaryDatas,
    required double averageSalary,
  }) {
    final double actorPoints = _calculateActorsPoints(
      simple: simple,
      average: average,
      complicate: complicate,
    );
    // debugPrint('actorPoints: $actorPoints');

    final double useCasePoints = _calculateUseCasePoints(
      simpleB: simpleB,
      averageB: averageB,
      complicateB: complicateB,
      simpleM: simpleM,
      averageM: averageM,
      complicateM: complicateM,
      simpleT: simpleT,
      averageT: averageT,
      complicateT: complicateT,
    );
    // debugPrint('useCasePoints: $useCasePoints');

    final uucpPoints = useCasePoints + actorPoints;
    // debugPrint('uucpPoints: $uucpPoints');

    final tcfPoints = _calculateTCFPoints(
      distribute: distribute,
      responsiveness: responsiveness,
      onlineEfficiency: onlineEfficiency,
      innerProcessComplexity: innerProcessComplexity,
      sourceCodeResusability: sourceCodeResusability,
      easyImplement: easyImplement,
      easyToUse: easyToUse,
      adaptability: adaptability,
      flexibility: flexibility,
      concurrency: concurrency,
      specialSecurity: specialSecurity,
      accessThirdPartySoftware: accessThirdPartySoftware,
      specialTrainingRequire: specialTrainingRequire,
    );
    // debugPrint('tcfPoints: $tcfPoints');

    final efPoints = _calculateEFPoints(
      rupKnowledge: rupKnowledge,
      similarAppExperiences: similarAppExperiences,
      oopExperiences: oopExperiences,
      leaderShip: leaderShip,
      activeness: activeness,
      requirementStability: requirementStability,
      useParttimeEmployee: useParttimeEmployee,
      codeLanguageDifficulty: codeLanguageDifficulty,
    );
    debugPrint('efPoints: $efPoints');
    // debugPrint(
    //     'efPoints 2: ${1.4 + (-0.03 * (rupKnowledge * 1.5 + similarAppExperiences * 0.5 + oopExperiences + leaderShip * 0.5 + activeness + requirementStability * 2 + useParttimeEmployee * (-1) + codeLanguageDifficulty * (-1)))}');
    // debugPrint(
    //     'efPoints 3: ${(rupKnowledge * 1.5 + similarAppExperiences * 0.5 + oopExperiences + leaderShip * 0.5 + activeness + requirementStability * 2 + useParttimeEmployee * (-1) + codeLanguageDifficulty * (-1))}');

    // debugPrint('rupKnowledge : ${rupKnowledge}');
    // debugPrint('similarAppExperiences : ${similarAppExperiences * 0.5}');
    // debugPrint('oopExperiences : ${oopExperiences}');
    // debugPrint('leaderShip : ${leaderShip * 0.5}');
    // debugPrint('activeness : ${activeness}');
    // debugPrint('requirementStability : ${requirementStability * 2}');
    // debugPrint('useParttimeEmployee : ${useParttimeEmployee * (-1)}');
    // debugPrint('codeLanguageDifficulty : ${codeLanguageDifficulty * (-1)}');

    final aucpPoints = uucpPoints * tcfPoints * efPoints;
    debugPrint('aucpPoints: $aucpPoints');

    final workTimeInterpolation = _calculateWorkTimeInterpolation(
      rupKnowledge: rupKnowledge,
      similarAppExperiences: similarAppExperiences,
      oopExperiences: oopExperiences,
      leaderShip: leaderShip,
      activeness: activeness,
      requirementStability: requirementStability,
      useParttimeEmployee: useParttimeEmployee,
      codeLanguageDifficulty: codeLanguageDifficulty,
    );
    debugPrint('workTimeInterpolation: $workTimeInterpolation');

    final actualEffort = 10 / 6 * aucpPoints;
    debugPrint('actualEffort: $actualEffort');

    // final averageSalary = _calculateAverageSalary(
    //     // salaryDatas: salaryDatas,
    //     );
    // debugPrint('averageSalary: $averageSalary');

    return 1.4 * workTimeInterpolation * actualEffort * averageSalary;
  }
}
