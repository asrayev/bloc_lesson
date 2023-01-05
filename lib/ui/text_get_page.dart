import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/textform_cubit.dart';


class TextMakerPage extends StatelessWidget {
  const TextMakerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextMakerCubit counterCubit = TextMakerCubit("Ad");

    return BlocProvider(
      create: (context) => counterCubit,
      child: Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [
              // BlocBuilder<TextMakerCubit, int>(builder: (context, state) {
              //   return Text(
              //     "${state.toString()}  va ${NumberFormat.decimalPattern('uz_UZ').format(1000000)}",
              //     style: const TextStyle(
              //       fontSize: 40,
              //       fontWeight: FontWeight.w700,
              //     ),
              //   );
              // }),
              BlocBuilder<TextMakerCubit, String>(
                  builder: (context, state) {
                    return Column(
                      children: [
                        Text(
                          "${state.toString()}",
                          style: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {

                              },
                              icon: Icon(Icons.add),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {

                              },
                              icon: Icon(Icons.remove),
                            )
                          ],
                        )
                      ],
                    );
                  }),
            ],
          )),
    );
    // });
  }
}

//