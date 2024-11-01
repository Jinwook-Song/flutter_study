import 'package:flutter/widgets.dart';
import 'package:flutter_bloc_firebase_login_starter/app/bloc/app_bloc.dart';
import 'package:flutter_bloc_firebase_login_starter/home/view/home_page.dart';
import 'package:flutter_bloc_firebase_login_starter/login/view/login_page.dart';

List<Page<dynamic>> onGenerateAppViewPages(
  AppStatus state,
  List<Page<dynamic>> pages,
) {
  switch (state) {
    case AppStatus.authenticated:
      return [HomePage.page()];
    case AppStatus.unauthenticated:
      return [LoginPage.page()];
  }
}
