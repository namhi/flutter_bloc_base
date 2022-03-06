import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_base/features/home/bloc/home_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(),
      child: Scaffold(
        appBar: AppBar(),
        bottomNavigationBar: _BottomNavigationBar(),
        body: const Text('345'),
      ),
    );
  }
}

class _BottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (previous, current) => previous.index != current.index,
      builder: (context, state) {
        return BottomNavigationBar(
          currentIndex: state.index,
          type: BottomNavigationBarType.fixed,
          onTap: (index) => context.read<HomeBloc>().add(HomeTabChanged(index)),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.update),
              label: 'Report',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people_alt),
              label: 'User',
            ),
          ],
        );
      },
    );
  }
}
