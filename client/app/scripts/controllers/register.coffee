'use strict'

###*
 # @ngdoc function
 # @name clientApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the clientApp
###
angular.module 'clientApp'
  .controller 'RegisterCtrl',
  ["$scope", "User", \
  ($scope, User) ->

    $scope.signUp = (user)->
      User.singUp(user)

    @awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
    return
  ]
