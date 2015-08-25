var app = angular.module('Roomi', ['ngRoute', 'ng-token-auth']);

app.config(['$routeProvider','$locationProvider','$authProvider', function($routeProvider,$locationProvider, $authProvider) {
  // Configure Angular Routes
  $routeProvider.
    when('/', {
      templateUrl: "/assets/static_pages/index-3edffc7f09a08401799637e1e44a4ae97b5c781380b161ae7c8d8b838e5a8c15.html",
      controller: 'StaticPagesCtrl'
    }).
    when('/signup', {
      templateUrl: "/assets/auth/signup-16d42550c599378d261bab87b706c45ef707d1c65725cec40df69cff9954885c.html",
      controller: 'SignUpCtrl'
    });

  $authProvider.configure({
    apiUrl: "http://localhost:3000"
  })
}]);
