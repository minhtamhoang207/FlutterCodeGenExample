import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:code_gen_example/features/{{name.snakeCase()}}/presentation/bloc/{{name.snakeCase()}}_bloc.dart';
import 'package:code_gen_example/di_example/di_example_injectable.dart';


class {{name.pascalCase()}}Screen extends StatelessWidget {
  const {{name.pascalCase()}}Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<{{name.pascalCase()}}Bloc>(),
      child: const {{name.pascalCase()}}Page(),
    );
  }
}


class {{name.pascalCase()}}Page extends StatefulWidget {
  const {{name.pascalCase()}}Page({super.key});

  @override
  State<{{name.pascalCase()}}Page> createState() => _{{name.pascalCase()}}PageState();
}

class _{{name.pascalCase()}}PageState extends State<{{name.pascalCase()}}Page> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}