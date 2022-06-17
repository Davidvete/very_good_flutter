// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tradepoint/counter/counter.dart';

void main() {
  testWidgets('update the UI when incrementing the state', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: CounterPage()));

    // The default value is `0`, as declared in our provider
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Increment the state and re-render
    // ignore: lines_longer_than_80_chars
    await tester.tap(
        find.byKey(const Key('counterView_increment_floatingActionButton')));
    await tester.pump();

    // The state have properly incremented
    expect(find.text('1'), findsOneWidget);
    expect(find.text('0'), findsNothing);
  });

  testWidgets('update the UI when decrementing the state', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: CounterPage()));

    // The default value is `0`, as declared in our provider
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Increment the state and re-render
    // ignore: lines_longer_than_80_chars
    await tester.tap(
        find.byKey(const Key('counterView_decrement_floatingActionButton')));
    await tester.pump();

    // The state have properly incremented
    expect(find.text('-1'), findsOneWidget);
    expect(find.text('0'), findsNothing);
  });
}
