import 'package:detailsapp/cubit/userData_cubit.dart';
import 'package:detailsapp/home/presentation/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => UserDataCubit(),
    child: const MaterialApp(
      home: Home(),
    ),
  ));
}
