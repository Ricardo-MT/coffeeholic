// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:coffee_images_repository/coffee_images_repository.dart';
import 'package:coffeeholic/app/app.dart';
import 'package:coffeeholic/sections/home/home.dart';
import 'package:flutter_test/flutter_test.dart';

class FakeCoffeeImagesRepository extends Fake implements CoffeeImagesRepository {}

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(
        App(cofeeimagesRepository: FakeCoffeeImagesRepository(),));
      expect(find.byType(HomePage), findsOneWidget);
    });
  });
}
