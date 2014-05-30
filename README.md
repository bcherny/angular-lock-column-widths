angular-lock-column-widths [![Build Status](https://travis-ci.org/turn/angular-lock-column-widths.svg?branch=master)](https://travis-ci.org/turn/angular-lock-column-widths)
==========================

lock and unlock table column widths, to prevent resizing

## install

`bower install -S angular-lock-column-widths`

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