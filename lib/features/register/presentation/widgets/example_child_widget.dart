import 'package:flutter/cupertino.dart';

class ChildWidget extends StatelessWidget {
  const ChildWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 30,
      width: 30,
      child: Placeholder(),
    );
  }
}
