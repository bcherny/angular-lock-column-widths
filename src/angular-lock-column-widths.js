angular
.module('turn/lockColumnWidths', [])
.directive ('lockColumnWidths', function() {

	return {
		restrict: 'A',
		scope: false,
		link: function (scope, element) {

			angular.extend(scope, {

				ths: null,

				// lazy-query the DOM for <th>'s
				// and cache them
				getThs: function() {

					return scope.ths || (
						scope.ths = angular
							.element(element)
							.find('th')
					);

				},

				// prevent a <th> from resizing
				lockColumnWidth: function (th) {

					angular
						.element(th)
						.css('width', th.offsetWidth);

				},

				// allow a <th> to resize
				unlockColumnWidth: function (th) {

					angular
						.element(th)
						.css('width', '');

				},

				// prevent <th>'s from resizing
				lockColumnWidths: function() {

					angular.forEach(
						scope.getThs(),
						scope.lockColumnWidth
					);

				},

				// allow <th>'s to resize
				unlockColumnWidths: function() {

					angular.forEach(
						scope.getThs(),
						scope.unlockColumnWidth
					);

				}

			});

		}
	};

});