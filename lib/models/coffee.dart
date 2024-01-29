//
//  barista_mock
//  coffee
//
//  Created by Ngonidzashe Mangudya on 29/01/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:equatable/equatable.dart';

class Coffee extends Equatable {
  const Coffee({
    required this.name,
    required this.image,
  });
  final String name;
  final String image;

  @override
  List<Object?> get props => [name, image];
}
