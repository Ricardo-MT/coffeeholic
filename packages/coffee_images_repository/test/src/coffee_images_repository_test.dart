// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:cofeeholic_api/cofeeholic_api.dart';
import 'package:coffee_images_repository/coffee_images_repository.dart';
import 'package:mocktail/mocktail.dart';
// ignore_for_file: prefer_const_constructors
import 'package:test/test.dart';

class MockTodosApi extends Mock implements CofeeholicApi {}

class FakeTodo extends Fake implements CoffeeImage {}

void main() {
  late CofeeholicApi api;
  group('CoffeeImagesRepository', () {
    test('can be instantiated', () {
      expect(CoffeeImagesRepository(cofeeholicApi: MockTodosApi()), isNotNull);
    });
  });
}
