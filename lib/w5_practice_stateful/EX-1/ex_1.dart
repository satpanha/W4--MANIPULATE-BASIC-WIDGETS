import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("Custom buttons")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SelectionButton(),
            SizedBox(height: 10),
            SelectionButton(),
            SizedBox(height: 10),
            SelectionButton(),
            SizedBox(height: 10),
            SelectionButton(),
          ],
        ),
      ),
    ),
  ),
);

class SelectionButton extends StatefulWidget {
  const SelectionButton({super.key});

  @override
  State<SelectionButton> createState() => _SelectionButtonState();
}

class _SelectionButtonState extends State<SelectionButton> {
  bool isSelect = false;

  Text get selectLabel => isSelect
      ? const Text("Selected", style: TextStyle(color: Colors.white))
      : const Text("Not selected", style: TextStyle(color: Colors.black));

  ButtonStyle get selectButtonStyle => ElevatedButton.styleFrom(
        backgroundColor: isSelect ? Colors.blue[500] : Colors.blue[50],
      );

  void changeSelectState() => setState(() {
        isSelect = !isSelect;
      });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
        onPressed: changeSelectState,
        style: selectButtonStyle,
        child: selectLabel,
      ),
    );
  }
}
