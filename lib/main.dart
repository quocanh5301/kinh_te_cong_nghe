import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinh_te_cong_nghe/basic_input_field.dart';
import 'package:kinh_te_cong_nghe/logic.dart';
import 'package:kinh_te_cong_nghe/styles.dart';
import 'package:kinh_te_cong_nghe/submit_button.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: '#08357C'.toColor()),
          textTheme: GoogleFonts.arimoTextTheme(Theme.of(context).textTheme),
          useMaterial3: true,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();

  //TFW
  final String tfwHint = 'Giá trị xếp hạng';

  final distribute = TextEditingController();

  final responsiveness = TextEditingController();

  final onlineEfficiency = TextEditingController();

  final innerProcessComplexity = TextEditingController();

  final sourceCodeResusability = TextEditingController();

  final easyImplement = TextEditingController();

  final easyToUse = TextEditingController();

  final adaptability = TextEditingController();

  final flexibility = TextEditingController();

  final concurrency = TextEditingController();

  final specialSecurity = TextEditingController();

  final accessThirdPartySoftware = TextEditingController();

  final specialTrainingRequire = TextEditingController();

  //actors
  final String actorHint = 'Số tác nhân';
  final simple = TextEditingController();

  final average = TextEditingController();

  final complicate = TextEditingController();

  //use case
  final String useCaseHint = 'Số trường hợp sử dụng';
  final simpleB = TextEditingController();

  final averageB = TextEditingController();

  final complicateB = TextEditingController();

  final simpleM = TextEditingController();

  final averageM = TextEditingController();

  final complicateM = TextEditingController();

  final simpleT = TextEditingController();

  final averageT = TextEditingController();

  final complicateT = TextEditingController();

  //P (interpolation)
  final String pHint = 'Giá trị xếp hạng';
  final rupKnowledge = TextEditingController();

  final similarAppExperiences = TextEditingController();

  final oopExperiences = TextEditingController();

  final leaderShip = TextEditingController();

  final activeness = TextEditingController();

  final requirementStability = TextEditingController();

  final useParttimeEmployee = TextEditingController();

  final codeLanguageDifficulty = TextEditingController();

  // salary
  final String salaryHint = 'VND';
  // final salary = TextEditingController();

  // final numberEmployee = TextEditingController();

  final averageSalary = TextEditingController();

  FutureOr<bool?> _showDialog({
    required BuildContext currentCtx,
    required void Function() onConfirm,
    required String title,
    required String content,
  }) async =>
      await showDialog(
        context: currentCtx,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: const Color.fromARGB(255, 89, 26, 26),
            title: Center(
              child: Text(
                title,
                style: AppStyles.f15sb().copyWith(color: Colors.white),
              ),
            ),
            content: Text(
              content,
              style: AppStyles.f14m().copyWith(color: Colors.white),
            ),
            actions: <Widget>[
              SizedBox(
                height: AppStyles.height(50),
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () => onConfirm(),
                        child: Container(
                          decoration: BoxDecoration(
                            color: '#DBA510'.toColor(),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text(
                              'Xác nhận',
                              style: AppStyles.f16m()
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      );

  double _stringToDouble(String value) =>
      double.parse(value.replaceAll(".", "").replaceAll(",", "."));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: '#08357C'.toColor(),
        title: Text(
          'Homework',
          style: AppStyles.f15sb().copyWith(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                //TFW
                const VerticalSpace(16),
                BasicInputField(
                  name: 'distribute',
                  textInputType: TextInputType.number,
                  labelText: 'Hệ thống phân tán',
                  hintText: tfwHint,
                  validator: FormBuilderValidators.required(
                      errorText: 'Please fill out this field'),
                  controller: distribute,
                ),
                const VerticalSpace(16),
                BasicInputField(
                  name: 'email',
                  textInputType: TextInputType.number,
                  labelText: 'Đáp ứng tức thời / đảm bảo thông lượng',
                  hintText: tfwHint,
                  validator: FormBuilderValidators.required(
                      errorText: 'Please fill out this field'),
                  controller: responsiveness,
                ),
                const VerticalSpace(16),
                BasicInputField(
                  name: 'phone',
                  textInputType: TextInputType.number,
                  labelText: 'Hiệu quả sử dụng trực tuyến',
                  hintText: tfwHint,
                  validator: FormBuilderValidators.required(
                      errorText: 'Please fill out this field'),
                  controller: onlineEfficiency,
                ),
                const VerticalSpace(16),
                BasicInputField(
                  name: 'distribute',
                  textInputType: TextInputType.number,
                  labelText: 'Độ phức tạp của xử lý bên trong',
                  hintText: tfwHint,
                  validator: FormBuilderValidators.required(
                      errorText: 'Please fill out this field'),
                  controller: innerProcessComplexity,
                ),
                const VerticalSpace(16),
                BasicInputField(
                  name: 'distribute',
                  textInputType: TextInputType.number,
                  labelText: 'Mã nguồn phải tái sử dụng được',
                  hintText: tfwHint,
                  validator: FormBuilderValidators.required(
                      errorText: 'Please fill out this field'),
                  controller: sourceCodeResusability,
                ),
                const VerticalSpace(16),
                BasicInputField(
                  name: 'distribute',
                  textInputType: TextInputType.number,
                  labelText: 'Dễ cài đặt',
                  hintText: tfwHint,
                  validator: FormBuilderValidators.required(
                      errorText: 'Please fill out this field'),
                  controller: easyImplement,
                ),
                const VerticalSpace(16),
                BasicInputField(
                  name: 'distribute',
                  textInputType: TextInputType.number,
                  labelText: 'Dễ sử dụng',
                  hintText: tfwHint,
                  validator: FormBuilderValidators.required(
                      errorText: 'Please fill out this field'),
                  controller: easyToUse,
                ),
                const VerticalSpace(16),
                BasicInputField(
                  name: 'distribute',
                  textInputType: TextInputType.number,
                  labelText: 'Khả năng chuyển đổi',
                  hintText: tfwHint,
                  validator: FormBuilderValidators.required(
                      errorText: 'Please fill out this field'),
                  controller: adaptability,
                ),
                const VerticalSpace(16),
                BasicInputField(
                  name: 'distribute',
                  textInputType: TextInputType.number,
                  labelText: 'Khả năng dễ thay đổi',
                  hintText: tfwHint,
                  validator: FormBuilderValidators.required(
                      errorText: 'Please fill out this field'),
                  controller: flexibility,
                ),
                const VerticalSpace(16),
                BasicInputField(
                  name: 'distribute',
                  textInputType: TextInputType.number,
                  labelText: 'Sử dụng đồng thời',
                  hintText: tfwHint,
                  validator: FormBuilderValidators.required(
                      errorText: 'Please fill out this field'),
                  controller: concurrency,
                ),
                const VerticalSpace(16),
                BasicInputField(
                  name: 'distribute',
                  textInputType: TextInputType.number,
                  labelText: 'Có các tính năng bảo mật đặc biệt',
                  hintText: tfwHint,
                  validator: FormBuilderValidators.required(
                      errorText: 'Please fill out this field'),
                  controller: specialSecurity,
                ),
                const VerticalSpace(16),
                BasicInputField(
                  name: 'distribute',
                  textInputType: TextInputType.number,
                  labelText: 'Truy nhập trực tiếp tới các phần mềm thứ ba',
                  hintText: tfwHint,
                  validator: FormBuilderValidators.required(
                      errorText: 'Please fill out this field'),
                  controller: accessThirdPartySoftware,
                ),
                const VerticalSpace(16),
                BasicInputField(
                  name: 'distribute',
                  textInputType: TextInputType.number,
                  labelText: 'Yêu cầu đào tạo cho người sử dụng',
                  hintText: tfwHint,
                  validator: FormBuilderValidators.required(
                      errorText: 'Please fill out this field'),
                  controller: specialTrainingRequire,
                ),
                const VerticalSpace(16),
                //actors
                BasicInputField(
                  name: 'distribute',
                  textInputType: TextInputType.number,
                  labelText: 'Đơn giản',
                  hintText: actorHint,
                  validator: FormBuilderValidators.required(
                      errorText: 'Please fill out this field'),
                  controller: simple,
                ),
                const VerticalSpace(16),
                BasicInputField(
                  name: 'distribute',
                  textInputType: TextInputType.number,
                  labelText: 'Trung bình',
                  hintText: actorHint,
                  validator: FormBuilderValidators.required(
                      errorText: 'Please fill out this field'),
                  controller: average,
                ),
                const VerticalSpace(16),
                BasicInputField(
                  name: 'distribute',
                  textInputType: TextInputType.number,
                  labelText: 'Phức tạp',
                  hintText: actorHint,
                  validator: FormBuilderValidators.required(
                      errorText: 'Please fill out this field'),
                  controller: complicate,
                ),
                //use case
                const VerticalSpace(16),
                BasicInputField(
                  name: 'distribute',
                  textInputType: TextInputType.number,
                  labelText: 'Đơn giản loại B',
                  hintText: useCaseHint,
                  validator: FormBuilderValidators.required(
                      errorText: 'Please fill out this field'),
                  controller: simpleB,
                ),
                const VerticalSpace(16),
                BasicInputField(
                  name: 'distribute',
                  textInputType: TextInputType.number,
                  labelText: 'Trung bình loại B',
                  hintText: useCaseHint,
                  validator: FormBuilderValidators.required(
                      errorText: 'Please fill out this field'),
                  controller: averageB,
                ),
                const VerticalSpace(16),
                BasicInputField(
                  name: 'distribute',
                  textInputType: TextInputType.number,
                  labelText: 'Phức tạp loại B',
                  hintText: useCaseHint,
                  validator: FormBuilderValidators.required(
                      errorText: 'Please fill out this field'),
                  controller: complicateB,
                ),
                const VerticalSpace(16),
                BasicInputField(
                  name: 'distribute',
                  textInputType: TextInputType.number,
                  labelText: 'Đơn giản loại M',
                  hintText: useCaseHint,
                  validator: FormBuilderValidators.required(
                      errorText: 'Please fill out this field'),
                  controller: simpleM,
                ),
                const VerticalSpace(16),
                BasicInputField(
                  name: 'distribute',
                  textInputType: TextInputType.number,
                  labelText: 'Trung bình loại M',
                  hintText: useCaseHint,
                  validator: FormBuilderValidators.required(
                      errorText: 'Please fill out this field'),
                  controller: averageM,
                ),
                const VerticalSpace(16),
                BasicInputField(
                  name: 'distribute',
                  textInputType: TextInputType.number,
                  labelText: 'Phức tạp loại M',
                  hintText: useCaseHint,
                  validator: FormBuilderValidators.required(
                      errorText: 'Please fill out this field'),
                  controller: complicateM,
                ),
                const VerticalSpace(16),
                BasicInputField(
                  name: 'distribute',
                  textInputType: TextInputType.number,
                  labelText: 'Đơn giản loại T',
                  hintText: useCaseHint,
                  validator: FormBuilderValidators.required(
                      errorText: 'Please fill out this field'),
                  controller: simpleT,
                ),
                const VerticalSpace(16),
                BasicInputField(
                  name: 'distribute',
                  textInputType: TextInputType.number,
                  labelText: 'Trung bình loại T',
                  hintText: useCaseHint,
                  validator: FormBuilderValidators.required(
                      errorText: 'Please fill out this field'),
                  controller: averageT,
                ),
                const VerticalSpace(16),
                BasicInputField(
                  name: 'distribute',
                  textInputType: TextInputType.number,
                  labelText: 'Phức tạp loại T',
                  hintText: useCaseHint,
                  validator: FormBuilderValidators.required(
                      errorText: 'Please fill out this field'),
                  controller: complicateT,
                ),
                //P (interpolation)
                const VerticalSpace(16),
                BasicInputField(
                  name: 'distribute',
                  textInputType: TextInputType.number,
                  labelText: 'Hiểu biết về RUP',
                  hintText: pHint,
                  validator: FormBuilderValidators.required(
                      errorText: 'Please fill out this field'),
                  controller: rupKnowledge,
                ),
                const VerticalSpace(16),
                BasicInputField(
                  name: 'distribute',
                  textInputType: TextInputType.number,
                  labelText: 'Kinh nghiệm về ứng dụng tương tự',
                  hintText: pHint,
                  validator: FormBuilderValidators.required(
                      errorText: 'Please fill out this field'),
                  controller: similarAppExperiences,
                ),
                const VerticalSpace(16),
                BasicInputField(
                  name: 'distribute',
                  textInputType: TextInputType.number,
                  labelText: 'Kinh nghiệm về hướng đối tượng',
                  hintText: pHint,
                  validator: FormBuilderValidators.required(
                      errorText: 'Please fill out this field'),
                  controller: oopExperiences,
                ),
                const VerticalSpace(16),
                BasicInputField(
                  name: 'distribute',
                  textInputType: TextInputType.number,
                  labelText: 'Khả năng lãnh đạo Nhóm',
                  hintText: pHint,
                  validator: FormBuilderValidators.required(
                      errorText: 'Please fill out this field'),
                  controller: leaderShip,
                ),
                const VerticalSpace(16),
                BasicInputField(
                  name: 'distribute',
                  textInputType: TextInputType.number,
                  labelText: 'Tính chất năng động',
                  hintText: pHint,
                  validator: FormBuilderValidators.required(
                      errorText: 'Please fill out this field'),
                  controller: activeness,
                ),
                const VerticalSpace(16),
                BasicInputField(
                  name: 'distribute',
                  textInputType: TextInputType.number,
                  labelText: 'Độ ổn định của các yêu cầu',
                  hintText: pHint,
                  validator: FormBuilderValidators.required(
                      errorText: 'Please fill out this field'),
                  controller: requirementStability,
                ),
                const VerticalSpace(16),
                BasicInputField(
                  name: 'distribute',
                  textInputType: TextInputType.number,
                  labelText: 'Nhân viên làm bán thời gian',
                  hintText: pHint,
                  validator: FormBuilderValidators.required(
                      errorText: 'Please fill out this field'),
                  controller: useParttimeEmployee,
                ),
                const VerticalSpace(16),
                BasicInputField(
                  name: 'distribute',
                  textInputType: TextInputType.number,
                  labelText: 'Ngôn ngữ lập trình loại khó',
                  hintText: pHint,
                  validator: FormBuilderValidators.required(
                      errorText: 'Please fill out this field'),
                  controller: codeLanguageDifficulty,
                ),
                const VerticalSpace(16),
                BasicInputField(
                  name: 'salary',
                  textInputType: TextInputType.number,
                  labelText: 'Mức lương lao động bình quân',
                  hintText: salaryHint,
                  validator: FormBuilderValidators.required(
                      errorText: 'Please fill out this field'),
                  controller: averageSalary,
                ),
                const VerticalSpace(16),
                SubmitButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      //do something
                      _showDialog(
                        currentCtx: context,
                        onConfirm: () {
                          Navigator.of(context).pop();
                        },
                        title: 'RESULT',
                        content:
                            'Giá trị phần mềm nội bộ (G) là: \n${Logic.calculateApplicationPrice(
                          distribute: _stringToDouble(distribute.text),
                          responsiveness: _stringToDouble(responsiveness.text),
                          onlineEfficiency:
                              _stringToDouble(onlineEfficiency.text),
                          innerProcessComplexity:
                              _stringToDouble(innerProcessComplexity.text),
                          sourceCodeResusability:
                              _stringToDouble(sourceCodeResusability.text),
                          easyImplement: _stringToDouble(easyImplement.text),
                          easyToUse: _stringToDouble(easyToUse.text),
                          adaptability: _stringToDouble(adaptability.text),
                          flexibility: _stringToDouble(flexibility.text),
                          concurrency: _stringToDouble(concurrency.text),
                          specialSecurity:
                              _stringToDouble(specialSecurity.text),
                          accessThirdPartySoftware:
                              _stringToDouble(accessThirdPartySoftware.text),
                          specialTrainingRequire:
                              _stringToDouble(specialTrainingRequire.text),
                          simple: _stringToDouble(simple.text),
                          average: _stringToDouble(average.text),
                          complicate: _stringToDouble(complicate.text),
                          simpleB: _stringToDouble(simpleB.text),
                          averageB: _stringToDouble(averageB.text),
                          complicateB: _stringToDouble(complicateB.text),
                          simpleM: _stringToDouble(simpleM.text),
                          averageM: _stringToDouble(averageM.text),
                          complicateM: _stringToDouble(complicateM.text),
                          simpleT: _stringToDouble(simpleT.text),
                          averageT: _stringToDouble(averageT.text),
                          complicateT: _stringToDouble(complicateT.text),
                          rupKnowledge: _stringToDouble(rupKnowledge.text),
                          similarAppExperiences:
                              _stringToDouble(similarAppExperiences.text),
                          oopExperiences: _stringToDouble(oopExperiences.text),
                          leaderShip: _stringToDouble(leaderShip.text),
                          activeness: _stringToDouble(activeness.text),
                          requirementStability:
                              _stringToDouble(requirementStability.text),
                          useParttimeEmployee:
                              _stringToDouble(useParttimeEmployee.text),
                          codeLanguageDifficulty:
                              _stringToDouble(codeLanguageDifficulty.text),
                          averageSalary: _stringToDouble(averageSalary.text),
                        )}',
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
