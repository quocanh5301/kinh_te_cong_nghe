import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:kinh_te_cong_nghe/styles.dart';

class BasicInputField extends StatelessWidget {
  final String name;
  final TextInputType? textInputType;
  final String? labelText;
  final String? hintText;
  // final void Function(String?)? onChanged;
  // final void Function(String?)? onSubmitted;
  final String? Function(String? value)? validator;
  final TextEditingController? controller;
  // final String? initialValue;

  const BasicInputField({
    super.key,
    required this.name,
    this.textInputType,
    this.labelText,
    this.hintText,
    // this.onChanged,
    // this.onSubmitted,
    this.validator,
    this.controller,
    // this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      // initialValue: initialValue,
      controller: controller,
      validator: validator,
      name: name,
      textAlign: TextAlign.start,
      textAlignVertical: TextAlignVertical.center,
      maxLines: 1,
      keyboardType: textInputType,
      decoration: InputDecoration(
        isDense: true,
        labelText: labelText,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: '#08357C'.toColor()),
        ),
        labelStyle: AppStyles.f12m().copyWith(color: Colors.black),
        hintStyle: AppStyles.f12m().copyWith(color: Colors.black),
      ),
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      // onChanged: onChanged,
      // onSubmitted: onSubmitted,
    );
  }
}
