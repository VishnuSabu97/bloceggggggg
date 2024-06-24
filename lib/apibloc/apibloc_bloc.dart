import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:bloceggggggg/apibloc/apiservice.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

import 'productmodel.dart';

part 'apibloc_event.dart';

part 'apibloc_state.dart';

class ApiblocBloc extends Bloc<ApiblocEvent, ApiblocState> {
  ApiblocBloc() : super(ApiblocInitial(productlist: [])) {
    on<ApiblocEvent>((event, emit) async {
      ApiServices apiServices = ApiServices();

      var s=await apiServices.fetchProducts();
      emit(ApiblocState(productlist: s));
    });
  }
}
