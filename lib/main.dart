import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinh_te_cong_nghe/basic_input_field.dart';
import 'package:kinh_te_cong_nghe/styles.dart';
import 'package:kinh_te_cong_nghe/submit_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: '#08357C'.toColor()),
        textTheme: GoogleFonts.arimoTextTheme(Theme.of(context).textTheme),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('homework'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            const VerticalSpace(16),
            BasicInputField(
              name: 'name',
              textInputType: TextInputType.text,
              labelText: 'Name',
              hintText: 'Enter your name',
              validator: FormBuilderValidators.required(errorText: 'error'),
            ),
            const VerticalSpace(16),
            BasicInputField(
              name: 'email',
              textInputType: TextInputType.emailAddress,
              labelText: 'Email',
              hintText: 'Enter your email',
              validator: FormBuilderValidators.email(errorText: 'error'),
            ),
            const VerticalSpace(16),
            BasicInputField(
              name: 'phone',
              textInputType: TextInputType.phone,
              labelText: 'Phone',
              hintText: 'Enter your phone',
              validator: FormBuilderValidators.required(errorText: 'error'),
            ),
            const VerticalSpace(16),
            SubmitButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  //do something
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Processing Data'),
                      duration: Duration(seconds: 2),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.red,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
