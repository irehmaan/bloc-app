import 'package:detailsapp/cubit/userData.dart';
import 'package:detailsapp/cubit/userData_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OutPutDetails extends StatelessWidget {
  const OutPutDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.deepPurple.withOpacity(0.5),
          ),
          height: MediaQuery.of(context).size.height / 2,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: BlocBuilder<UserDataCubit, List<UserData>>(
                  builder: (context, state) {
                    return ListView.builder(
                      padding: const EdgeInsets.all(0),
                      itemCount: state.length,
                      itemBuilder: (context, index) {
                        final user = state[index];
                        return ListTile(
                          leading: Text(" Name: ${user.name}"),
                          trailing: Text("Phone: ${user.phone}"),
                        );
                      },
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
