import 'package:detailsapp/cubit/userData.dart';
import 'package:detailsapp/cubit/userData_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InputUserDetails extends StatelessWidget {
  const InputUserDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController name = TextEditingController();
    final TextEditingController phone = TextEditingController();

    return Column(
      children: [
        const SizedBox(
          height: 100,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.deepPurple.withOpacity(0.5),
              borderRadius: BorderRadius.circular(20)),
          height: MediaQuery.of(context).size.height / 3.6,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Enter your Name:",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(
                        height: 40,
                        width: 200,
                        child: TextField(
                          controller: name,
                          decoration: const InputDecoration(
                            filled: true,
                          ),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Enter your Phone:",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(
                        height: 40,
                        width: 200,
                        child: TextField(
                            controller: phone,
                            decoration: const InputDecoration(
                              filled: true,
                            )))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  MaterialButton(
                    onPressed: () {
                      final user = UserData(name: name.text, phone: phone.text);
                      context.read<UserDataCubit>().addUser(user);
                      name.clear();
                      phone.clear();
                    },
                    color: Colors.white,
                    child: const Text("Add User"),
                  )
                ]),
              )
            ],
          ),
        ),
      ],
    );
  }
}
