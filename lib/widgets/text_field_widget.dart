import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/auth_cubit/auth_cubit.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.label,
    this.onChanged,
    this.suffixIcon,
  });
  final String label;
  final Function(String)? onChanged;

  final IconButton? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 15),
        child: TextFormField(
          validator: (data) {
            if (data!.isEmpty) {
              return 'field is required';
            } else if (label == 'Email Address' && !data.contains('@')) {
              return 'The email must contain @';
            } else if (label == 'Password' && data.length <= 6) {
              return 'The password must be 6 letters and numbers or more';
            }
            return null;
          },
          style: const TextStyle(color: Colors.black45),
          onChanged: onChanged,
          obscureText: label == 'Password'
              ? BlocProvider.of<AuthCubit>(context).obscurePassword
              : false,
          cursorColor: Colors.black38,
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            label: Text(
              label,
              style: const TextStyle(color: Colors.black38),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black38),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black38),
            ),
          ),
        ));
  }
}
