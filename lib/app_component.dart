// Copyright (c) 2017. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular/angular.dart';
//import 'package:angular_forms/angular_forms.dart';

class Hero {
  final int id;
  String name;

  Hero(this.id, this.name);
}

@Component(
  selector: 'my-app',
  template: '''
  <h1>{{title}}</h1>
  <h2>{{hero.name}} details!</h2>
  <div><label>id: </label>{{hero.id}}</div>
  <div>
    <label>name: </label>
    <input [(ngModel)]="hero.name" placeholder="name">
  </div>
''',
  directives: const [CORE_DIRECTIVES,
)
class AppComponent {
  String title = 'Tour of Heroes';
  var hero = new Hero(1, 'Windstorm');
}


