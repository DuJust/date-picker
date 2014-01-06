'use strict'

describe 'Controller: calendarCtrl', ->

  beforeEach module('weDateApp')
  beforeEach inject ($controller, $rootScope) ->
    @scope = $rootScope.$new()
    $controller 'calendarCtrl', {$scope: @scope}

  describe 'update', ->

    beforeEach ->
      @scope.update()

    it 'should attach a whole month', ->
      today = @scope.weDate
      firstSunday = today.clone().date(1).day(0)
      lastSaturday = today.clone().date(today.daysInMonth()).day(6)
      expect(@scope.weeks[0][0].format()).toBe firstSunday.format()
      expect(@scope.weeks[4][6].format()).toBe lastSaturday.format()

  describe 'show week', ->

    beforeEach ->
      @scope.showWeek()

    it 'should only show one week', ->
      expect(@scope.weeks.length).toBe 1
      expect(@scope.weeks[0].length).toBe 7