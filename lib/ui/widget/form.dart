import 'package:flutter/material.dart';
import 'package:the_boys/shared/theme.dart';

class CustomFormField extends StatefulWidget {
  final String title;
  final bool obsecureText;
  final TextEditingController? controller;
  final bool isShowTitle;
  final bool iconVisibility;
  final Function(String)? onFieldSubmitted;

  const CustomFormField(
      {required this.title,
      this.obsecureText = false,
      this.controller,
      this.isShowTitle = true,
      this.iconVisibility = false,
      this.onFieldSubmitted,
      super.key});

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
    late bool _obsecureText;

  @override
  void initState() {
    super.initState();
    _obsecureText = widget.obsecureText;
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.isShowTitle)
          Text(
            widget.title,
            style: primaryTextStyle.copyWith(
              fontWeight: medium,
            ),
          ),
        if (widget.isShowTitle)
          const SizedBox(
            height: 8,
          ),
          TextFormField(
           obscureText:  _obsecureText,
          controller: widget.controller,
          decoration: InputDecoration(
              hintText: !widget.isShowTitle ? widget.title : null,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              contentPadding: const EdgeInsets.all(12),
              suffixIcon: widget.iconVisibility
                  ? IconButton(
                      onPressed: () {
                        setState((){
                          _obsecureText = !_obsecureText;
                        });
                      },
                      icon: Icon(_obsecureText
                          ? Icons.visibility_off
                          : Icons.visibility, color: Colors.grey,))
                  : null),
                  style: primaryTextStyle.copyWith(),
          onFieldSubmitted: widget.onFieldSubmitted,
          )
      ],
    );
  }
}
