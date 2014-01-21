'use strict'

angular.module('weDateApp').directive 'date', -> {
  restrict: 'E'
  require: '^calendar'
  scope: {
    date: '='
    selectedDate: '='
  }
  templateUrl: 'views/date.html'
  link: (scope, element, attrs, calendar) ->
    scope.selected = ->
      calendar.pickDate(scope.date)
}
