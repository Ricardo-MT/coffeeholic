// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:cofeeholic_api/cofeeholic_api.dart';
// ignore_for_file: prefer_const_constructors
import 'package:test/test.dart';

class TestCofeeholicApi extends CofeeholicApi {
  TestCofeeholicApi() : super();

  @override
  dynamic noSuchMethod(Invocation invocation) {
    return super.noSuchMethod(invocation);
  }
}

void main() {
  group('CofeeholicApi', () {
    test('can be instantiated', () {
      expect(TestCofeeholicApi(), isNotNull);
    });
  });
}
