import 'package:app_dev_final_exam/q1/bloc/juice_bloc.dart';
import 'package:app_dev_final_exam/q1/ui/juice_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class JuiceScreen extends StatelessWidget {
  const JuiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe7c9c9),
      body: BlocBuilder<JuiceBloc, JuiceState>(builder: (context, state) {
        switch (state) {
          case JuiceSuccess():
            return JuiceDetailScreen(
                count: state.count,
                expanded: state.expanded,
                juice: state.juice);
          case JuiceError():
            return Center(
              child: Text(state.error),
            );
          case JuiceLoading():
            return Center(
              child: CircularProgressIndicator(),
            );
        }
      }),
    );
  }
}
