# angular-lock-column-widths [![Build Status](https://travis-ci.org/bcherny/angular-lock-column-widths.svg?branch=master)](https://travis-ci.org/bcherny/angular-lock-column-widths) [![Coverage Status](https://img.shields.io/coveralls/bcherny/angular-lock-column-widths.svg)](https://coveralls.io/r/bcherny/angular-lock-column-widths)

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