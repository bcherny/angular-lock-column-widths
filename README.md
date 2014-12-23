# angular-lock-column-widths [![Build Status][build]](https://travis-ci.org/bcherny/angular-lock-column-widths) [![Coverage Status][coverage]](https://coveralls.io/r/bcherny/angular-lock-column-widths) ![][bower] [![npm]](https://www.npmjs.com/package/angular-lock-column-widths)

[build]: https://img.shields.io/travis/bcherny/angular-lock-column-widths.svg?branch=master&style=flat-square
[coverage]: http://img.shields.io/coveralls/bcherny/angular-lock-column-widths.svg?branch=master&style=flat-square
[bower]: https://img.shields.io/bower/v/angular-lock-column-widths.svg?style=flat-square
[npm]: https://img.shields.io/npm/v/angular-lock-column-widths.svg?style=flat-square

lock and unlock table column widths, to prevent resizing

## install

`bower install -S git@github.com:bcherny/angular-lock-column-widths.git`

## use

**html**

```html
<table lock-column-widths>
	...
</table>
```

**js**

```js
angular
.module('foo', ['turn/lockColumnWidths'])
.controller('bar', function ($scope) {
	
	$scope.lockColumnWidths();

	$scope.unlockColumnWidths();

})
```

## build

```bash
bower install
npm install
grunt
```

## hack

```bash
bower install
npm install
grunt watch
```

## test

```bash
bower install
npm install
grunt test
```

## license

Apache2