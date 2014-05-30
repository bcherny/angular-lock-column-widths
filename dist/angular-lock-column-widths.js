angular.module('turn/lockColumnWidths', []).directive('lockColumnWidths', function () {
  return {
    restrict: 'A',
    scope: false,
    link: function (scope, element) {
      angular.extend(scope, {
        ths: null,
        getThs: function () {
          return scope.ths || (scope.ths = angular.element(element).find('th'));
        },
        lockColumnWidth: function (th) {
          angular.element(th).css('width', th.offsetWidth);
        },
        unlockColumnWidth: function (th) {
          angular.element(th).css('width', '');
        },
        lockColumnWidths: function () {
          angular.forEach(scope.getThs(), scope.lockColumnWidth);
        },
        unlockColumnWidths: function () {
          angular.forEach(scope.getThs(), scope.unlockColumnWidth);
        }
      });
    }
  };
});