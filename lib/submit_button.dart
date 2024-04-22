import 'package:flutter/material.dart';
import 'package:kinh_te_cong_nghe/styles.dart';

class SubmitButton extends StatelessWidget {
  final void Function()? onPressed;

  const SubmitButton({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: AppStyles.height(48),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: '#08357C'.toColor()),
          child: TextButton(
            onPressed: onPressed,
            child: Center(
              child: Text(
                'Xử lý',
                style: AppStyles.f16m().copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
