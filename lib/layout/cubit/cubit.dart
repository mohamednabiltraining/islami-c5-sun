import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami_c5_sun/layout/cubit/states.dart';

class HomeLayoutCubit extends Cubit<HomeLayoutStates> {
  HomeLayoutCubit(): super(HomeLayoutInitialState());

  static HomeLayoutCubit get(context) => BlocProvider.of(context);

  // login of tabs
  int currentTabIndex = 0;
  void changeTabIndex(int idx) {
    currentTabIndex = idx;
    print(idx);
    emit(HomeLayoutChangeTabIndexState());
  }

  // login of theme
  bool isDefaultTheme = true;
  void changeTheme() {
    isDefaultTheme = !isDefaultTheme;
    emit(HomeLayoutChangeThemeState());
  }


}