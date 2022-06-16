// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterCubit extends StateNotifier<int> {
  CounterCubit() : super(0);

  void increment() => state++;
  void decrement() => state--;
}
