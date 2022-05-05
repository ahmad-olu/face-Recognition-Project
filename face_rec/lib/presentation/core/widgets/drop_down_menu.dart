import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class DropDownMenu extends StatelessWidget {
  DropDownMenu({
    Key? key,
    required this.items,
    this.value,
    required this.name,
    required this.onChanged,
    required this.context,
  }) : super(key: key);

  List<String> items = [''];
  final String? value;
  final Function(String?)? onChanged;
  final String name;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButtonFormField2(
        hint: Text(
          name,
          style: const TextStyle(
            fontSize: 14,
          ),
        ),
        items: items
            .map(
              (item) => DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                ),
              ),
            )
            .toList(),
        validator: (value) {
          if (value == null) {
            return "This Field Can't be empty";
          }
          return null;
        },
        value: value,
        onChanged: onChanged,
        buttonHeight: 40,
        buttonWidth: 140,
        itemHeight: 40,
      ),
    );
  }
}
