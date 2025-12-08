import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class MyTextField extends StatefulWidget {
  final String? title;
  final bool? isDate;
  final bool? isPassword;
  final TextEditingController? controller;

  const MyTextField({super.key, required this.title, required this.isDate, required this.isPassword, required this.controller});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  DateTime? selectedDate;
  TextEditingController? _controller;

  bool _obscurePassword = true;
  bool _isPasswordValid = true;

  @override
  void initState() {
    _controller = widget.controller!;
    super.initState();
  }



  Future<void> _selectDate() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1940),
      lastDate: DateTime(2030),
    );
    setState(() {
      selectedDate = pickedDate;
      _controller!.text = (selectedDate != null)
      ? "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}"
      : "Selecione uma data";
    });
  }  

  var maskDate = MaskTextInputFormatter(
    mask: '##/##/####',
    filter: { "#": RegExp(r'[0-9]') },
    type: MaskAutoCompletionType.lazy,
  );
  @override
  Widget build(BuildContext context) {
    return TextField(
      inputFormatters: (widget.isDate!) 
        ? [maskDate]
        : [],
      obscureText: (widget.isPassword ?? false) ? _obscurePassword : false,
      controller: _controller,
      onChanged: (value) {
        if (widget.isPassword ?? false) {
          final valid = RegExp(r'^(?=.*\d).{6,}$').hasMatch(value);
          if (valid != _isPasswordValid) {
            setState(() => _isPasswordValid = valid);
          }
        }
      },
      decoration: InputDecoration(
        label: Text(widget.title!),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        suffixIcon: (widget.isDate!)
            ? IconButton(onPressed: _selectDate, icon: Icon(Icons.calendar_month))
            : null,
        filled: true,
        fillColor: Colors.white,
        helperText: (widget.isPassword ?? false) ? 'Mínimo 6 números' : null,
        errorText: (widget.isPassword ?? false) && !_isPasswordValid ? 'Senha inválida' : null,
      ),
    );
  }
}