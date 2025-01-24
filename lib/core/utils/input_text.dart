import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputText extends StatelessWidget {
  final String? text;
  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;
  final bool isIcon;
  final bool obscureText;
  final bool isFontSize;
  final Widget? suffixIcon;
  final TextStyle? style;
  final List<TextInputFormatter>? inputFormatters;
  final FormFieldValidator<String>? validator;
  final int? maxLength;
  final TextAlign textAlign;
  final BoxConstraints? constraints;
  final TextInputType? keyboardType;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final VoidCallback? onPressedIcon;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;
  final bool readOnly;
  final FormFieldSetter<String>? onSaved;
  final ValueChanged<String>? onFieldSubmitted;
  final VoidCallback? onEditingComplete;
  final double? fontSize;
  final String? initialValue;
  final int? minLines;
  final int? maxLines;
  final TextCapitalization? textCapitalization;

  const InputText({
    super.key,
    this.controller,
    this.labelText = '',
    this.hintText,
    this.isIcon = false,
    this.validator,
    this.obscureText = false,
    this.isFontSize = false,
    this.suffixIcon,
    this.style,
    this.inputFormatters,
    this.maxLength,
    this.textAlign = TextAlign.start,
    this.constraints,
    this.keyboardType,
    this.focusNode,
    this.textInputAction,
    this.onPressedIcon,
    this.onChanged,
    this.readOnly = false,
    this.onSaved,
    this.onTap,
    this.onFieldSubmitted,
    this.onEditingComplete,
    this.fontSize,
    this.initialValue,
    this.minLines,
    this.maxLines,
    this.text,
    this.textCapitalization,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      onEditingComplete: onEditingComplete,
      onFieldSubmitted: onFieldSubmitted,
      initialValue: initialValue,
      onChanged: onChanged,
      onSaved: onSaved,
      readOnly: readOnly,
      textInputAction: textInputAction,
      maxLines: maxLines,
      minLines: minLines,
      maxLength: maxLength,
      textAlign: textAlign,
      focusNode: focusNode,
      cursorColor: const Color(0xFF4B4D73),
      inputFormatters: inputFormatters,
      // textCapitalization: textCapitalization ?? TextCapitalization.none,
      style: TextStyle(fontSize: isFontSize ? fontSize : 14),
      decoration: InputDecoration(
          fillColor: Colors.white,
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 12),
          // floatingLabelBehavior: FloatingLabelBehavior.never,
          // fillColor: Colors.white,
          // alignLabelWithHint: true,
          // filled: true,
          // contentPadding: const EdgeInsets.only(left: 8, top: 2, bottom: 2),
          // focusColor: const Color.fromRGBO(176, 176, 176, 1),
          // prefixIconColor: const Color.fromRGBO(176, 176, 176, 1),
          // iconColor: const Color.fromRGBO(176, 176, 176, 1),
          suffixIcon: isIcon ? IconButton(onPressed: onPressedIcon, icon: suffixIcon!) : suffixIcon,
          // label: Text(
          //   '$labelText',
          //   style: const TextStyle(fontSize: 13),
          // ),
          suffixIconConstraints: const BoxConstraints(
            minHeight: 25,
            maxHeight: 25,
          ),
          labelText: labelText,
          hintText: hintText,
          counterText: '',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Color.fromRGBO(176, 176, 176, 1),
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Color.fromRGBO(176, 176, 176, 1),
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Color.fromRGBO(176, 176, 176, 1),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Color.fromRGBO(176, 176, 176, 1),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(
              color: Color.fromRGBO(176, 176, 176, 1),
            ),
          ),
          constraints: constraints),
      controller: controller,
      keyboardType: keyboardType,
      validator: validator,
      obscureText: obscureText,
    );
  }
}
