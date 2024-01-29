//
//  barista_mock
//  constants
//
//  Created by Ngonidzashe Mangudya on 29/01/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'gen/assets.gen.dart';
import 'models/coffee.dart';

List<Coffee> $availableCoffees = [
  Coffee(
    name: 'Americano',
    image: Assets.images.americano.path,
  ),
  Coffee(
    name: 'Latte',
    image: Assets.images.latte.path,
  ),
  Coffee(
    name: 'Cappuccino',
    image: Assets.images.cuppaccino.path,
  ),
];
