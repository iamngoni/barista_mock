//
//  barista_mock
//  injection
//
//  Created by Ngonidzashe Mangudya on 29/01/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
void configureInjection() => getIt.init();
