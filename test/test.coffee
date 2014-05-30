describe 'angular-lock-column-widths', ->

	beforeEach module 'turn/lockColumnWidths'
	
	beforeEach ->
		
		inject ($compile, $rootScope) =>

			@scope = do $rootScope.$new

			@element = angular.element """
				<table lock-column-widths>
					<thead>
						<tr>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
						</tr>
						<tr>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</tbody>
				</table>
			"""

			($compile @element) @scope
			do @scope.$digest
			@scope = do @element.scope


	#########################################


	describe '#getThs', ->

		it 'should return scope.ths if it exists', ->

			@scope.ths = 'foo'

			expect do @scope.getThs
			.toBe @scope.ths

		it 'should return an array of all <th>\'s in the element if scope.ths doesn\'t exist', ->

			@scope.ths = null

			expect do @scope.getThs
			.toEqual @element.find 'th'

		it 'should set scope.ths equal to the <th> array', ->

			@scope.ths = null

			do @scope.getThs

			expect @scope.ths
			.toEqual @element.find 'th'


	describe '#lockColumnWidth', ->

		it 'should set the passed <th>\'s CSS width equal to its computed width', ->

			element = (@element.find 'th')[0]

			@scope.lockColumnWidth element

			expect element.style.width
			.toBe (@element.find 'th')[0].offsetWidth + 'px'


	describe '#unlockColumnWidth', ->

		it 'should set the passed <th>\'s CSS width equal to to an empty string', ->

			element = (@element.find 'th')[0]

			@scope.unlockColumnWidth element

			expect element.style.width
			.toBe ''


	describe '#lockColumnWidths', ->

		it 'should call #getThs with no arguments', ->

			spyOn @scope, 'getThs'
			.and.callThrough()

			do @scope.lockColumnWidths

			expect @scope.getThs
			.toHaveBeenCalledWith

		it 'should call #lockColumnWidth with each <th>', ->

			spyOn @scope, 'lockColumnWidth'

			do @scope.lockColumnWidths

			expect do @scope.lockColumnWidth.calls.count
			.toEqual @scope.ths.length

			expect do @scope.lockColumnWidth.calls.allArgs
			.toEqual ([].slice.call @scope.ths).map (th, n) -> [th, n]


	describe '#unlockColumnWidths', ->

		it 'should call #getThs with no arguments', ->

			spyOn @scope, 'getThs'
			.and.callThrough()

			do @scope.unlockColumnWidths

			expect @scope.getThs
			.toHaveBeenCalledWith

		it 'should call #unlockColumnWidth with each <th>', ->

			spyOn @scope, 'unlockColumnWidth'

			do @scope.unlockColumnWidths

			expect do @scope.unlockColumnWidth.calls.count
			.toEqual @scope.ths.length

			expect do @scope.unlockColumnWidth.calls.allArgs
			.toEqual ([].slice.call @scope.ths).map (th, n) -> [th, n]

