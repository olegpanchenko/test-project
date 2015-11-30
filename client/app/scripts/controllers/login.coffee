'use strict'

###*
 # @ngdoc function
 # @name clientApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the clientApp
###
angular.module 'clientApp'
  .controller 'LoginCtrl',
  ["$scope", "User", \
  ($scope, User) ->

    $scope.signIn = (user)->
      User.singIn(user)

    @awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
    return
  ]
