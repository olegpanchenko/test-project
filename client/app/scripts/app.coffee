'use strict'

###*
 # @ngdoc overview
 # @name clientApp
 # @description
 # # clientApp
 #
 # Main module of the application.
###
angular
  .module 'clientApp', [
    'ngAnimate',
    'ngAria',
    'ngCookies',
    'ngMessages',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch',
    'restangular',
    #'ui.router',
    #'xeditable',
    #'ui.bootstrap',

    #'ngDragDrop',
    #'templates'
  ]
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/login.html'
        controller: 'LoginCtrl'
        controllerAs: 'login'
      .when '/register',
        templateUrl: 'views/register.html'
        controller: 'RegisterCtrl'
        controllerAs: 'register'
      .otherwise
        redirectTo: '/'


angular.module("clientApp").config ["RestangularProvider", (RestangularProvider) ->
  # RestangularProvider.setDefaultHeaders({
  #   'Content-Type': 'application/json',
  #   'X-Requested-With': 'XMLHttpRequest'
  # });
  # RestangularProvider.setDefaultHttpFields({
  #     'withCredentials': true
  # });

  RestangularProvider.setBaseUrl("/api/v1")
  # RestangularProvider.setRequestInterceptor( (elem, operation, what) ->
  #   if (operation == 'post' || operation == 'put' || operation == 'patch')
  #     wrapper = {}
  #     console.log "-- what = " + what
  #     wrapper[what.singularize()] = elem
  #     delete elem.createdAt;
  #     return wrapper
    # taken from: http://stackoverflow.com/questions/18123962/how-to-put-only-some-fields-with-restangular/18168610#18168610

  #)
]
